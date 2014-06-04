class Match < ActiveRecord::Base
	belongs_to 	:group
	belongs_to 	:team_a, :class_name => "Team"
	belongs_to 	:team_b, :class_name => "Team"
	has_many	:bets

	def is_possible_bet_match 
		Time.now <= (self.date_time.getlocal.to_time - 3600).to_datetime
	end
end
