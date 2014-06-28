class Tournament < ActiveRecord::Base
	belongs_to	:admin_tournament, :class_name => "User"
	belongs_to	:winner, :class_name => "Team"
	belongs_to	:runnerup, :class_name => "Team"
	has_many	:groups, :order => "is_rankable,id"
	has_many	:betting_pools

	accepts_nested_attributes_for :groups

	def update_bet_points
		betting_pools.each do |betting_pool|
			betting_pool.points_won_in_bet = 0

			if betting_pool.winner == winner && betting_pool.winner != nil
				betting_pool.points_won_in_bet += winner_point
				betting_pool.points_won_in_bet += team_in_finals_point
			end

			if betting_pool.runnerup == runnerup && betting_pool.runnerup != nil
				betting_pool.points_won_in_bet += runnerup_point
				betting_pool.points_won_in_bet += team_in_finals_point
			end

			if betting_pool.winner == runnerup && betting_pool.winner != nil
				betting_pool.points_won_in_bet += team_in_finals_point
			end

			if betting_pool.runnerup == winner && betting_pool.runnerup != nil
				betting_pool.points_won_in_bet += team_in_finals_point
			end

			betting_pool.save(:validate => false)
		end
	end
end
