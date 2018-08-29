class Person < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
  has_one :personinfo, dependent: :destroy, inverse_of: :person

  has_many :people_middle_categories, dependent: :destroy
  has_many :middle_categories, through: :people_middle_categories

  accepts_nested_attributes_for :personinfo, update_only: true
end
