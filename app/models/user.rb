class User < ActiveRecord::Base
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	before_save {self.email = email.downcase}

	validates :nombre, presence: true, length: { maximum: 50 }
	validates :apellido_paterno, presence: true, length: { maximum: 50 }
	validates :apellido_materno, presence: true, length: { maximum: 50 }
	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
		uniqueness: { case_sensitive: false }
	has_secure_password
	validates :password, length: { minimum: 6 }
end
