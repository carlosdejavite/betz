class League < ActiveRecord::Base
	has_many :betting_pools

	def get_ranking(league_id)
		@ranking = Array.new
		betting_pool_size = 0
		betting_pools = BettingPool.find(:all, :conditions => "league_id = " + league_id.to_s)

		betting_pools.each do |betting_pool|
			betting_pool_size += betting_pool.bet_amount
			if betting_pool.user.name != nil then
				rank = LeagueRank.new
				rank.user = betting_pool.user
				rank.betting_pool = betting_pool
				rank.points = 0

				if betting_pool.points_won_in_bet != nil then
					rank.points += betting_pool.points_won_in_bet
				end

				betting_pool.bets.each do |bet|
					if bet.points_won_in_bet != nil then
						rank.points += bet.points_won_in_bet
					end
				end

				@ranking << rank
			end
		end

		@ranking.sort! do |a,b|
  			comp = (b.points <=> a.points)
  			comp.zero? ? (a.user.name <=> b.user.name) : comp
		end

		@ranking.each_with_index do |rank, index|

			rank.prize = 0

			if index == 0 then
				rank.prize = first_place_prize*betting_pool_size
			end

			if index == 1 then
				rank.prize = second_place_prize*betting_pool_size
			end

			if index == 2 then
				rank.prize = third_place_prize*betting_pool_size
			end

		end

	end
end
