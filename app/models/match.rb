class Match < ActiveRecord::Base
	belongs_to 	:group
	belongs_to 	:team_a, :class_name => "Team"
	belongs_to 	:team_b, :class_name => "Team"
	has_many	:bets
end
