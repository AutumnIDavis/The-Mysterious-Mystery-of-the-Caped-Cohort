class ScrollzsController < ApplicationController
  before_action :set_scrollz, only: [:show, :edit, :update, :destroy]
 before_action :authenticate_user!, :except => [:index, :show]

  # GET /scrollzs
  # GET /scrollzs.json
  def index
    @scrollzs = Scrollz.all
  end


  def show
@scrollz = Scrollz.find(params[:id])
@first_stage = Stage.where(scrollz_id: @scrollz.id).first
  end


  def new
    @scrollz = Scrollz.new
  end




  def create
    @scrollz = Scrollz.new(scrollz_params)
    @scrollz.user_id = current_user.id
    if @scrollz.save
      @scrollz_id = @scrollz.id
      redirect_to new_scrollz_path_stage_path(@scrollz)
    else
      flash[:error] = "????"
      redirect_to new_scrollz_path
    end
  end

  def design
    @scrollz = Scrollz.find(params[:scrollz_id])
    is_the_user_the_owner(@scrollz, current_user)
    @stages = Stages.where(scrollz_id: @scrollz.id)
    unless @stages[0]
      redirect_to new_scrollz_path_stage_path(@scrollz)
    end
    @scrollz_id = @scrollz.id
  end


  private

  def scrollz_params
    params.require(:scrollz).permit(:title, :instruction)
  end
##ensure the user signed in
  def is_the_user_the_owner(scrollz, user)
    if scrollz.user_id != user.id
      flash[:notice] = "?"
      redirect_to scrollz_path(@adventure)
    end
  end

end
