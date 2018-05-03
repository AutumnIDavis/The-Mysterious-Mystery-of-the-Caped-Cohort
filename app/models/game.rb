class Game < ApplicationRecord
belongs_to :user

belongs_to :stage

  validates :user_id, presence: true

end
