class Whiskey < ApplicationRecord
	belongs_to :user, optional: true
	belongs_to :genre, optional: true
	belongs_to :district, optional: true
	has_many :post_comments, dependent: :destroy
	mount_uploader :image, ImageUploader

	validates :name, presence: true
	validates :body, presence: true
	validates :price, presence: true
	validates :rating, presence: true
end
