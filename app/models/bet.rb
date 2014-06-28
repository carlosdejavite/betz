class Bet < ActiveRecord::Base
	belongs_to 	:match
	belongs_to	:betting_pool
	belongs_to 	:team_won_penalties, :class_name => "Team"
	validate	:penalties_fill_check

	def penalties_fill_check
	    errors.add(:team_won_penalties, "of match " + match.team_a.abbreviation + "vs" + match.team_b.abbreviation + " must be filled for") unless
	        (score_a != score_b && team_won_penalties_id == nil) || (score_a == score_b && team_won_penalties_id != nil)
	end

end
