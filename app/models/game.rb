class Game < ApplicationRecord
belongs_to :user
  belongs_to :scrollz

  validates :user_id, presence: true
  validates :scrollz_id, presence: true
  validates :stages, presence: true

end

end
