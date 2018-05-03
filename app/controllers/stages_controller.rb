class StagesController < ApplicationController
  before_action :authenticate_user!

  def show
    game = Game.where(scrollc: params[:scrollz_id].to_i, user_id: current_user.id).first
    if game
      update_game(game)
      @stage = Stage.find(game.stage.split(',').last)
    else
      Game.create(stages: params[:id], choices: "", scrollz_id: params[:scrollz_id], user_id: current_user.id)
      @stage = Stage.find(params[:id])
    end
      @choices = Choice.where(stage_id: @stage.id)
      @stages_id = []
      @choices.each do |choice|
        @stages << [choice, Stage.where(parent_choice_id: choice.id).first]
      end
  end

  def new
    @scrollz = Scrollz.find(params[:scrollz_id])
    is_the_user_the_owner(@scrollz, current_user)
    @stage = Stage.new
  end

  def create
    @scrollz = Scrollz.find(params[:scrollz_id])

    if Stage.where(scrollz_id: params[:scrollz_id]).empty?
      @choice = Choice.where(option: "Start", stage_id: nil).first
    else
      @choice = Choice.all.last
    end
      @stage = Stage.new(stage_params)
      @stage.scrollz_id = @adventure.id
      @stage.parent_choice_id = @choice.id
      @stage.save
    redirect_to scrollz_design_path
  end

  def edit
    @scrollz= Scrollz.find(params[:scrollz_id])
    @cstage = Stage.find(params[:id])
  end

  def update
    @scrollz= Scrollz.find(params[:scrollz_id])
    is_the_user_the_owner(@scrollz, current_user)
    @stage = Stage.find(params[:id])
    @stage.update(stage_params)
    @choice = Choice.where(id: @stage.parent_choice_id).first
    redirect_to edit_scrollz_stage_choice_path(@scrollz,@stage,@choice)
  end


  def branch_destroy
    @scrollz = Scrollz.find(params[:scrollz_id])
    @stage = Stage.find(params[:stage_id])
    @choices = Choice.where(stage_id: @stage.id)

    if @choices == []
      mark_to_destroy(@stage)
    else
      children_chapters(@stage, @choices).each do |stage|
        mark_to_destroy(stage)
      end
    end

    delete_original_parent_choice(@stage)
    Stage.where(to_destroy: true).destroy_all
    redirect_to scrollz_design_path(@scrollz)
  end

  def children_chapters(stage, choices)
    stage = [stage]
    choices.each do |choice|
    stages << child_chapter_children(choice)
    end
    stages.flatten
  end

  def child_stage_children(choice)
    stage = Stage.where(parent_choice_id: choice.id)
    if stage == []
      stage
    else
      choices = Choice.where(stage_id: stage.first.id)
      stages = [stage.first, children_stages(stage.first, choices)]
    end
  end

  def mark_to_destroy(stage)
  stage.update(to_destroy: true)
  end

  def index
    @stages = Stage.all
  end


  private

  def stage_params
    params.require(:stage).permit(:description)
  end

  def update_game(game)
    choice_id = Stage.find(params[:id]).parent_choice_id
    game.update(stages: "#{game.stage},#{params[:id]}", choices: "#{game.choices},#{choice_id}") if choice_id
  end

  def is_user_in_control(scrollz, user)
    if scrollz.user_id != user.id
      flash[:notice] = "Cannot edit this story"
      redirect_to scrollz_path(@scrollz)
    end
  end

  def delete_original_parent_choice(stage)
    Choice.find(stage.parent_choice_id).destroy
  end
end
