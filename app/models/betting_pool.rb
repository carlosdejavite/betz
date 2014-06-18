class BettingPool < ActiveRecord::Base
	belongs_to 	:winner, :class_name => "Team"
	belongs_to 	:runnerup, :class_name => "Team"
	belongs_to 	:user
	belongs_to  :tournament
	belongs_to	:league
	has_many	:bets
	validate	:winner_different_from_runner_up

	accepts_nested_attributes_for :bets

	def is_possible_change_winners 
		Time.now <= (Match.joins(:group).where("tournament_id = ?",tournament.id).order("date_time")[0].date_time.getlocal.to_time - 3600).to_datetime
	end

	private

	def winner_different_from_runner_up
	    errors.add(:runnerup, "must be different from winner") unless
	        winner != runnerup
	end 
	
end
