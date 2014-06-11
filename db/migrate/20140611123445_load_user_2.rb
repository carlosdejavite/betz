class LoadUser2 < ActiveRecord::Migration
  def change

  	worldCup = Tournament.find_by(:name => "2014 FIFA World Cup Brazil")

    falajlan = User.new(:email => "falajlan@stanford.edu")
    falajlan.save(:validate => false)
    falajlanBet = BettingPool.new(:bet_amount => 20)
    falajlanBet.tournament = worldCup
    falajlanBet.user = falajlan
    falajlanBet.save(:validate => false)

    anwarg = User.new(:email => "anwarg@stanford.edu")
    anwarg.save(:validate => false)
    anwargBet = BettingPool.new(:bet_amount => 20)
    anwargBet.tournament = worldCup
    anwargBet.user = anwarg
    anwargBet.save(:validate => false)

    ads7 = User.new(:email => "ads7@stanford.edu")
    ads7.save(:validate => false)
    ads7Bet = BettingPool.new(:bet_amount => 20)
    ads7Bet.tournament = worldCup
    ads7Bet.user = ads7
    ads7Bet.save(:validate => false)

  end
end
