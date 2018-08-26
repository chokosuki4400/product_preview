class PeopleMiddleCategory < ApplicationRecord
  belongs_to :person
  belongs_to :middle_category
end
