class PlayersController < ApplicationController
  before_action :set_player, only: [:show, :edit, :update, :destroy]
