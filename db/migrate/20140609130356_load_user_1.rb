class LoadUser1 < ActiveRecord::Migration
  def change

  	worldCup = Tournament.find_by(:name => "2014 FIFA World Cup Brazil")

    dhruv = User.new(:email => "dhruvg@stanford.edu")
    dhruv.save(:validate => false)
    dhruvBet = BettingPool.new(:bet_amount => 20)
    dhruvBet.tournament = worldCup
    dhruvBet.user = dhruv
    dhruvBet.save(:validate => false)

    shan = User.new(:email => "shanzh@stanford.edu")
    shan.save(:validate => false)
    shanBet = BettingPool.new(:bet_amount => 20)
    shanBet.tournament = worldCup
    shanBet.user = shan
    shanBet.save(:validate => false)

    lmendes = User.new(:email => "lmendes@stanford.edu")
    lmendes.save(:validate => false)
    lmendesBet = BettingPool.new(:bet_amount => 20)
    lmendesBet.tournament = worldCup
    lmendesBet.user = lmendes
    lmendesBet.save(:validate => false)

    ivone = User.new(:email => "ivonejaraamezaga@gmail.com")
    ivone.save(:validate => false)
    ivoneBet = BettingPool.new(:bet_amount => 20)
    ivoneBet.tournament = worldCup
    ivoneBet.user = ivone
    ivoneBet.save(:validate => false)

  end
end
