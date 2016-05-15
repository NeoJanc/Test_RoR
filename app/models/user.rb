class User < ActiveRecord::Base
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	validates :nombre, presence: true, length: { maximum: 50 }
	validates :email, presence: true, format: { with:VALID_EMAIL_REGEX }
end
