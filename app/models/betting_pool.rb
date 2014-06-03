class BettingPool < ActiveRecord::Base
	belongs_to 	:winner, :class_name => "Team"
	belongs_to 	:runnerup, :class_name => "Team"
	belongs_to 	:user
	belongs_to  :tournament
	has_many	:bets

	accepts_nested_attributes_for :bets
	
end
