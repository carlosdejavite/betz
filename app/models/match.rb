class Match < ActiveRecord::Base
	belongs_to 	:group
	belongs_to 	:team_a, :class_name => "Team"
	belongs_to 	:team_b, :class_name => "Team"
	belongs_to 	:team_won_penalties, :class_name => "Team"
	has_many	:bets

	def teams
		@teams = Array.new
		@teams << team_a
		@teams << team_b
	end

	def is_possible_bet_match 
		Time.now <= (self.date_time.getlocal.to_time - 3600).to_datetime
	end

	def update_bet_points
		bets.each do |bet|
			bet.points_won_in_bet = 0

			if bet.team_won_penalties == nil then

				if team_won_penalties == nil then

					if bet.score_a > bet.score_b && score_a > score_b
						bet.points_won_in_bet += group.point
					end

					if bet.score_a == bet.score_b && score_a == score_b
						bet.points_won_in_bet += group.point
					end

					if bet.score_a < bet.score_b && score_a < score_b
						bet.points_won_in_bet += group.point
					end

				else

					if bet.score_a > bet.score_b && team_a == team_won_penalties
						bet.points_won_in_bet += group.point
					end

					if bet.score_a < bet.score_b && team_b == team_won_penalties
						bet.points_won_in_bet += group.point
					end

				end
			else
				if team_won_penalties == nil then

					if score_a > score_b && team_a == bet.team_won_penalties
						bet.points_won_in_bet += group.point
					end

					if score_a < score_b && team_b == bet.team_won_penalties
						bet.points_won_in_bet += group.point
					end

				else

					if bet.team_won_penalties == team_won_penalties
						bet.points_won_in_bet += group.point
					end

				end
			end

			if bet.score_a == score_a && bet.score_b == score_b
				bet.points_won_in_bet += 2*group.bonus
			end

			#if bet.score_b == score_b
			#	bet.points_won_in_bet += group.bonus
			#end

			bet.save(:validate => false)
		end
	end
end
