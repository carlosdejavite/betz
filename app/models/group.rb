class Group < ActiveRecord::Base
	has_many	:matches, :order=>"date_time"
	belongs_to 	:tournament

	accepts_nested_attributes_for :matches

	def classification(betting_pool_id = nil)
		@classification = Array.new

		matches.each do |match|

			index = @classification.index do|rank| rank.team == match.team_a end
			
			if index == nil then
				rank = GroupRank.new
				rank.team = match.team_a
				rank.points = 0
				rank.matches_played = 0
				rank.victories = 0
				rank.draws = 0
				rank.goal_difference = 0
				rank.goal_for = 0

				@classification << rank
			end

			index = @classification.index do|rank| rank.team == match.team_b end
			
			if index == nil then
				rank = GroupRank.new
				rank.team = match.team_b
				rank.points = 0
				rank.matches_played = 0
				rank.victories = 0
				rank.draws = 0
				rank.goal_difference = 0
				rank.goal_for = 0

				@classification << rank
			end

			if betting_pool_id != nil then
				game = Bet.find_by(:match_id => match.id, :betting_pool_id => betting_pool_id)
			else
				game = Match.find_by(:id => match.id)
			end
			
			if game != nil && game.score_a != nil && game.score_b != nil then
				
				team_a_index = @classification.index do|rank| rank.team == match.team_a end
				team_b_index = @classification.index do|rank| rank.team == match.team_b end

				@classification[team_a_index].matches_played += 1
				@classification[team_b_index].matches_played += 1

				@classification[team_a_index].goal_difference += (game.score_a - game.score_b)
				@classification[team_b_index].goal_difference += (game.score_b - game.score_a)

				@classification[team_a_index].goal_for += game.score_a
				@classification[team_b_index].goal_for += game.score_b
				
				if game.score_a > game.score_b then

					@classification[team_a_index].points += 3
					@classification[team_a_index].victories += 1

				elsif game.score_a == game.score_b then

					@classification[team_a_index].points += 1
					@classification[team_a_index].draws += 1
					
					@classification[team_b_index].points += 1
					@classification[team_b_index].draws += 1

				else

					@classification[team_b_index].points += 3
					@classification[team_b_index].victories += 1
					
				end
			end
		end

		@classification.sort! do |a,b|
  			comp = (b.points <=> a.points)
  			comp.zero? ? (b.goal_difference <=> a.goal_difference) : comp
		end

		@classification.each_with_index do |rank, index|
			if index <= 1 then
				rank.classified = true
			else
				rank.classified = false
			end
		end

	end

end
