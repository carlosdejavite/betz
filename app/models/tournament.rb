class Tournament < ActiveRecord::Base
	belongs_to	:admin_tournament, :class_name => "User"
	has_many	:groups
	has_many	:betting_pools
end
