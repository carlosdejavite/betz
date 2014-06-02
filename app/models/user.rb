class User < ActiveRecord::Base
	include ActiveModel::Validations
			
	has_many 	:tournaments, :class_name => "Tournament", :foreign_key => "admin_tournament_id"
	has_many	:betting_pools
	has_many	:bets
	validates 	:name, presence: true, allow_blank: false
	validates 	:password, presence: true, allow_blank: false
	validates 	:email, presence: true, email: true
	
	def password
		@password
	end

	def password=(value)
		if(value != nil) then
			crypto_hash = Digest::SHA2.new(512)
			self.salt = SecureRandom.hex(25)
  			self.password_digest = crypto_hash.hexdigest(self.salt + value)
  		end
  		@password = value
	end

	def password_valid?(password)
		crypto_hash = Digest::SHA2.new(512)
		if(password != nil && password_digest == crypto_hash.hexdigest(salt + password)) then
			return true
		else
			return false
		end
	end
end
