class User < ApplicationRecord
	has_many :whiskeys, dependent: :destroy
	has_many :reviews, dependent: :destroy

end
