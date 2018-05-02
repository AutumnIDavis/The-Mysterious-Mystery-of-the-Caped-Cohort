class ChoicesController < ApplicationController
  before_action :set_choice, only: [:show, :edit, :update, :destroy]

before_action :authenticate_user!

def new
@scrollz = Scrollz.find(params[scrollz_id])
is_user_in_control(@scrollz,current_user)
@stages = Stages.find(params[:stages_id])
@choice = Choice.new
end

def create
@scrollz = Scrollz.find(params[scrollz_id])
@stages = Stages.find(params[:stages_id])
@choice = Choice.new(choice_params)
@choice.stage_id = stage_id
@choice.save
redirect_to
end

def edit
@scrollz = Scrollz.find(params[scrollz_id])
@stages = Stages.find(params[:stages_id])
@choice = Choice.find(params[:id])
end

def update
end 

private

def choice_params
params.require(:choice)permit(:option)
end

def is_user_in_control
if scrollz.user_id != user.id
flash[:notice] = "this is not your game "
redirect_to
end
end
end
