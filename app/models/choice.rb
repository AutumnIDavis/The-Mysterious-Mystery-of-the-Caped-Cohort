class Choice < ApplicationRecord
  belongs_to :from_stage, class_name: "Stage"
  belongs_to :to_stage, class_name: "Stage"
  belongs_to :game
  default_scope { order(created_at: :asc) }

  accepts_nested_attributes_for :to_stage

  def user
    return game.user
  end
