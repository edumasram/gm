class Usuario < ActiveRecord::Base
  attr_accessible :email, :nome

	before_save { |user| user.email = email.downcase }


  	validates :nome, presence: true, length: {maximum: 50}
	
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
end
