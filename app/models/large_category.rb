class LargeCategory < ApplicationRecord
  has_many :middle_categories
  accepts_nested_attributes_for :middle_categories, allow_destroy: true
end
