class User < ApplicationRecord
	has_many :whiskeys
	has_many :reviews, dependent: :destroy

end
