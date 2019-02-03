class User < ApplicationRecord
	has_many :comments
	has_many :commentis
	has_many :pins
end