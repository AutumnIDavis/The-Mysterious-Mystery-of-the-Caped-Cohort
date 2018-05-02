class Stage < ApplicationRecord


belongs_to :scrollz
  has_many :choices, dependent: :destroy

  accepts_nested_attributes_for :choices

end
