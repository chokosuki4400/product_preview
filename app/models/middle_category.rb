class MiddleCategory < ApplicationRecord
  has_many :people_middle_categories, dependent: :destroy
  has_many :people, through: :people_middle_categories
end
