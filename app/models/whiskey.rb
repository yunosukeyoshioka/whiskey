class Whiskey < ApplicationRecord

  has_many :reviews, dependent: :destroy
	belongs_to :user, optional: true
	belongs_to :genre, optional: true
	belongs_to :district, optional: true
	mount_uploader :image, ImageUploader
end
