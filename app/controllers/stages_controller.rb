class StagesController < ApplicationController
  before_action :authenticate_user!

def show
end


def new
end



def create
end

def edit
end


#cancelling one option to choose other
def option_destroy
end




def pick_to_destroy(stage)
stage.update(to_destroy: true)
end


private

def stage_params
param.require(:stage).permit(:description)
end

def update_game
end
