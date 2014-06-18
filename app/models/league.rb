class League < ActiveRecord::Base
	has_many :betting_pools

	def get_ranking(league_id)
		@ranking = Array.new

		betting_pool_size = 0
		first_prize_split = 0
		second_prize_split = 0
		third_prize_split = 0

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
			if rank.points == @ranking[0].points then
				first_prize_split += 1
			elsif rank.points == @ranking[first_prize_split].points then
				second_prize_split += 1
			elsif rank.points == @ranking[second_prize_split + first_prize_split].points then
				third_prize_split += 1
			end
		end

		@ranking.each_with_index do |rank, index|

			rank.prize = 0

			if index < first_prize_split then
				rank.prize = first_place_prize*betting_pool_size/first_prize_split
			elsif index < second_prize_split + first_prize_split then
				rank.prize = second_place_prize*betting_pool_size/second_prize_split
			elsif index < third_prize_split + second_prize_split + first_prize_split then
				rank.prize = third_place_prize*betting_pool_size/third_prize_split
			end

		end

	end
end
