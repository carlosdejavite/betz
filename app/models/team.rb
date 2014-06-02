class Team < ActiveRecord::Base
	has_many :playing_home_matches, :class_name => "Match", :foreign_key => "team_a_id"
	has_many :playing_away_matches, :class_name => "Match", :foreign_key => "team_b_id"
	has_many :winner_bets, :class_name => "BettingPool", :foreign_key => "winner_id"
	has_many :runnerup_bets, :class_name => "BettingPool", :foreign_key => "runnerup_id"
end
