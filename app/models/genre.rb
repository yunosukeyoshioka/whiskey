class Genre < ApplicationRecord
	#belongs_to :whiskey, optional: true
	has_many :whiskeys
end
