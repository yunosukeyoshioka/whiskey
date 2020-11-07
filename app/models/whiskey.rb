class Whiskey < ApplicationRecord
	belongs_to :user, optional: true
	belongs_to :genre, optional: true
	belongs_to :district, optional: true
	has_many :post_comments, dependent: :destroy
	mount_uploader :image, ImageUploader

	validates :name, presence: true
	validates :body, presence: true
	VALIDATE_PRICE = /\A[0-9]+\z/
	validates :price, presence: true, format: { with: VALIDATE_PRICE }
	validates :rating, presence: true

	def self.search(search) #ここでのself.はUser.を意味する
    if search
      where(['name LIKE ?', "%#{search}%"]) #検索とnameの部分一致を表示。User.は省略
    else
      all #全て表示。User.は省略
    end
  end
end
