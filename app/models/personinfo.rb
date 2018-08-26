class Personinfo < ApplicationRecord
	belongs_to :person, inverse_of: :personinfo, optional: true
	mount_uploader :image, ImageUploader

	# validates :firstname, presence: true
	# validates :lastname, presence: true
	# validates :sex, presence: true
	# validates :age, presence: true
	# validates :live, presence: true
	# validates :country, presence: true
	# validates :image, presence: true
	# validates :copy, presence: true, length: { maximum: 25 }
	# validates :program, presence: true, length: { maximum: 400 }
	# validates :place, presence: true, length: { maximum: 400 }
	# validates :method, presence: true, length: { maximum: 400 }
	# validates :message, presence: true, length: { maximum: 400 }

end
