class Game < ApplicationRecord
belongs_to :user
  belongs_to :scrollz
 belongs_to :first_stage, class_name: 'Stage'
has_many :stages
has_many :choices
  validates :user_id, presence: true
  validates :scrollz_id, presence: true
  validates :stages, presence: true

end

end
