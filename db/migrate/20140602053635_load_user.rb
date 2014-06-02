class LoadUser < ActiveRecord::Migration
  def change

  	worldCup = Tournament.find_by(:name => "2014 FIFA World Cup Brazil")

    dejavite = User.new(:email => "dejavite@stanford.edu")
    dejavite.save(:validate => false)
    dejaviteBet = BettingPool.new(:bet_amount => 20)
    dejaviteBet.tournament = worldCup
    dejaviteBet.user = dejavite
    dejaviteBet.save(:validate => false)

    worldCup.admin_tournament = dejavite
    worldCup.save(:validate => false)

  	afreire = User.new(:email => "afreire@stanford.edu")
  	afreire.save(:validate => false)
  	afreireBet = BettingPool.new(:bet_amount => 20)
  	afreireBet.tournament = worldCup
  	afreireBet.user = afreire
  	afreireBet.save(:validate => false)

  	svonreno = User.new(:email => "svonreno@stanford.edu")
  	svonreno.save(:validate => false)
  	svonrenoBet = BettingPool.new(:bet_amount => 20)
  	svonrenoBet.tournament = worldCup
  	svonrenoBet.user = svonreno
  	svonrenoBet.save(:validate => false)

  	kshack = User.new(:email => "kshack@stanford.edu")
  	kshack.save(:validate => false)
  	kshackBet = BettingPool.new(:bet_amount => 20)
  	kshackBet.tournament = worldCup
  	kshackBet.user = kshack
  	kshackBet.save(:validate => false)

  	arequena = User.new(:email => "arequena@stanford.edu")
  	arequena.save(:validate => false)
  	arequenaBet = BettingPool.new(:bet_amount => 20)
  	arequenaBet.tournament = worldCup
  	arequenaBet.user = arequena
  	arequenaBet.save(:validate => false)


  	msauce = User.new(:email => "msauce@stanford.edu")
  	msauce.save(:validate => false)
  	msauceBet = BettingPool.new(:bet_amount => 20)
  	msauceBet.tournament = worldCup
  	msauceBet.user = msauce
  	msauceBet.save(:validate => false)

  	rekl = User.new(:email => "rekl@stanford.edu")
  	rekl.save(:validate => false)
  	reklBet = BettingPool.new(:bet_amount => 20)
  	reklBet.tournament = worldCup
  	reklBet.user = rekl
  	reklBet.save(:validate => false)

  	fmkann = User.new(:email => "fmkann@stanford.edu")
  	fmkann.save(:validate => false)
  	fmkannBet = BettingPool.new(:bet_amount => 20)
  	fmkannBet.tournament = worldCup
  	fmkannBet.user = fmkann
  	fmkannBet.save(:validate => false)

  	dfleeter = User.new(:email => "dfleeter@stanford.edu")
  	dfleeter.save(:validate => false)
  	dfleeterBet = BettingPool.new(:bet_amount => 20)
  	dfleeterBet.tournament = worldCup
  	dfleeterBet.user = dfleeter
  	dfleeterBet.save(:validate => false)

  	hdiazadd = User.new(:email => "hdiazadd@stanford.edu")
  	hdiazadd.save(:validate => false)
  	hdiazaddBet = BettingPool.new(:bet_amount => 20)
  	hdiazaddBet.tournament = worldCup
  	hdiazaddBet.user = hdiazadd
  	hdiazaddBet.save(:validate => false)

  	rjshah = User.new(:email => "rjshah@stanford.edu")
  	rjshah.save(:validate => false)
  	rjshahBet = BettingPool.new(:bet_amount => 20)
  	rjshahBet.tournament = worldCup
  	rjshahBet.user = rjshah
  	rjshahBet.save(:validate => false)

  	wiczko = User.new(:email => "wiczko@stanford.edu")
  	wiczko.save(:validate => false)
  	wiczkoBet = BettingPool.new(:bet_amount => 20)
  	wiczkoBet.tournament = worldCup
  	wiczkoBet.user = wiczko
  	wiczkoBet.save(:validate => false)

  	damashek = User.new(:email => "damashek@stanford.edu")
  	damashek.save(:validate => false)
  	damashekBet = BettingPool.new(:bet_amount => 20)
  	damashekBet.tournament = worldCup
  	damashekBet.user = damashek
  	damashekBet.save(:validate => false)

  	reuland = User.new(:email => "reuland@stanford.edu")
  	reuland.save(:validate => false)
  	reulandBet = BettingPool.new(:bet_amount => 20)
  	reulandBet.tournament = worldCup
  	reulandBet.user = reuland
  	reulandBet.save(:validate => false)

  	idebode = User.new(:email => "idebode@stanford.edu")
  	idebode.save(:validate => false)
  	idebodeBet = BettingPool.new(:bet_amount => 20)
  	idebodeBet.tournament = worldCup
  	idebodeBet.user = idebode
  	idebodeBet.save(:validate => false)

  	puron = User.new(:email => "puron@stanford.edu")
  	puron.save(:validate => false)
  	puronBet = BettingPool.new(:bet_amount => 20)
  	puronBet.tournament = worldCup
  	puronBet.user = puron
  	puronBet.save(:validate => false)

  	cedricm = User.new(:email => "cedricm@stanford.edu")
  	cedricm.save(:validate => false)
  	cedricmBet = BettingPool.new(:bet_amount => 20)
  	cedricmBet.tournament = worldCup
  	cedricmBet.user = cedricm
  	cedricmBet.save(:validate => false)

  	gtelles = User.new(:email => "gtelles@stanford.edu")
  	gtelles.save(:validate => false)
  	gtellesBet = BettingPool.new(:bet_amount => 20)
  	gtellesBet.tournament = worldCup
  	gtellesBet.user = gtelles
  	gtellesBet.save(:validate => false)

  	seckinc = User.new(:email => "seckinc@stanford.edu")
  	seckinc.save(:validate => false)
  	seckincBet = BettingPool.new(:bet_amount => 20)
  	seckincBet.tournament = worldCup
  	seckincBet.user = seckinc
  	seckincBet.save(:validate => false)

  	assafei = User.new(:email => "assafei@stanford.edu")
  	assafei.save(:validate => false)
  	assafeiBet = BettingPool.new(:bet_amount => 20)
  	assafeiBet.tournament = worldCup
  	assafeiBet.user = assafei
  	assafeiBet.save(:validate => false)

  	iguichar = User.new(:email => "iguichar@stanford.edu")
  	iguichar.save(:validate => false)
  	iguicharBet = BettingPool.new(:bet_amount => 20)
  	iguicharBet.tournament = worldCup
  	iguicharBet.user = iguichar
  	iguicharBet.save(:validate => false)

  	ryanl2 = User.new(:email => "ryanl2@stanford.edu")
  	ryanl2.save(:validate => false)
  	ryanl2Bet = BettingPool.new(:bet_amount => 20)
  	ryanl2Bet.tournament = worldCup
  	ryanl2Bet.user = ryanl2
  	ryanl2Bet.save(:validate => false)

  end
end
