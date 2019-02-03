class Comment < ApplicationRecord
	belongs_to :pin
	has_many :commentis
	belongs_to :user
end
