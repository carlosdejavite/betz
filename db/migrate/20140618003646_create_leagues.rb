class CreateLeagues < ActiveRecord::Migration
  def change
    create_table :leagues do |t|
      t.string 	:name
      t.float   :first_place_prize
      t.float   :second_place_prize
      t.float   :third_place_prize
      t.timestamps
    end

    add_column	:betting_pools, :league_id, :integer

    BettingPool.reset_column_information

    # Create GSB League

    gsbBets = League.new(:name => "GSBets World Cup Brazil")
    gsbBets.first_place_prize = 0.6
    gsbBets.second_place_prize = 0.3
    gsbBets.third_place_prize = 0.1
	  gsbBets.save(:validate => false)

	   bets = BettingPool.find(:all)
	   bets.each do |bet|
		bet.league = gsbBets
		bet.save(:validate => false)
	end
  end
end
