class Cat < ApplicationRecord
	mount_uploader :image, ImageUploader
	has_many :comments, dependent: :destroy
	validates :name, presence: true, length: {minimum: 3}
end
