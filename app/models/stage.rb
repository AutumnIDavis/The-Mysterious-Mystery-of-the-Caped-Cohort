class Stage < ApplicationRecord



has_many :choices, dependent: :destroy



end
