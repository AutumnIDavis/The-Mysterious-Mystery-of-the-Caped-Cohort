class GamesController < ApplicationController


def delete
game = Game.where(scrollz_id: params[:scrollz_id], user_id: current_user.id).first
    game.destroy
    @first_stage = Stage.where(scrollz_id: params[:scrollz_id]).first
    redirect_to
  end
end
