class LoadForgottenBets < ActiveRecord::Migration
  def change
  	gsbBets = League.find_by(:name => "GSBets World Cup Brazil")

  	mattUser = User.find_by(:email => "msauce@stanford.edu")
  	fabioUser = User.find_by(:email => "fmkann@stanford.edu")

  	brazil = Team.find_by(:abbreviation => "BRA")
  	france = Team.find_by(:abbreviation => "FRA")
  	italy = Team.find_by(:abbreviation => "ITA")

  	mattPool = BettingPool.find_by(:user => mattUser, :league => gsbBets)
  	mattPool.winner = brazil
  	mattPool.runnerup = france
  	mattPool.save(:validation => false)

  	fabioPool = BettingPool.find_by(:user => fabioUser, :league => gsbBets)
  	fabioPool.winner = brazil
  	fabioPool.runnerup = italy
  	fabioPool.save(:validation => false)

  	matchBraCro = Match.find(1)
  	matchMexCam = Match.find(2)

  	matchSpaNet = Match.find(7)
  	matchChiAus = Match.find(8)

  	matchColGre = Match.find(13)
  	matchIvoJap = Match.find(14)

  	matchUruCos = Match.find(19)
  	matchEngIta = Match.find(20)

  	matchSwiEcu = Match.find(25)
  	matchFraHon = Match.find(26)

  	matchArgBos = Match.find(31)
  	matchIraNig = Match.find(32)

  	matchGerPor = Match.find(37)
  	matchGhaUSA = Match.find(38)

  	matchBelAlge = Match.find(43)
  	matchRusKor = Match.find(44)

  	matchBraMex = Match.find(3)

  	matchAusNet = Match.find(9)

  	betBraCro = Bet.new(:betting_pool => fabioPool, :match => matchBraCro)
  	betBraCro.score_a = 2
  	betBraCro.score_b = 0
  	betBraCro.save(:validation => false)

  	betMexCam = Bet.new(:betting_pool => fabioPool, :match => matchMexCam)
  	betMexCam.score_a = 1
  	betMexCam.score_b = 1
  	betMexCam.save(:validation => false)

  	betSpaNet = Bet.new(:betting_pool => fabioPool, :match => matchSpaNet)
  	betSpaNet.score_a = 1
  	betSpaNet.score_b = 0
  	betSpaNet.save(:validation => false)

  	betChiAus = Bet.new(:betting_pool => fabioPool, :match => matchChiAus)
  	betChiAus.score_a = 2
  	betChiAus.score_b = 0
  	betChiAus.save(:validation => false)

  	betColGre = Bet.new(:betting_pool => fabioPool, :match => matchColGre)
  	betColGre.score_a = 1
  	betColGre.score_b = 0
  	betColGre.save(:validation => false)

  	betIvoJap = Bet.new(:betting_pool => fabioPool, :match => matchIvoJap)
  	betIvoJap.score_a = 1
  	betIvoJap.score_b = 1
  	betIvoJap.save(:validation => false)

  	betUruCos = Bet.new(:betting_pool => fabioPool, :match => matchUruCos)
  	betUruCos.score_a = 2
  	betUruCos.score_b = 0
  	betUruCos.save(:validation => false)

  	betEngIta = Bet.new(:betting_pool => fabioPool, :match => matchEngIta)
  	betEngIta.score_a = 1
  	betEngIta.score_b = 1
  	betEngIta.save(:validation => false)

  	betSwiEcu = Bet.new(:betting_pool => fabioPool, :match => matchSwiEcu)
  	betSwiEcu.score_a = 1
  	betSwiEcu.score_b = 0
  	betSwiEcu.save(:validation => false)

  	betFraHon = Bet.new(:betting_pool => fabioPool, :match => matchFraHon)
  	betFraHon.score_a = 3
  	betFraHon.score_b = 0
  	betFraHon.save(:validation => false)

  	betArgBos = Bet.new(:betting_pool => fabioPool, :match => matchArgBos)
  	betArgBos.score_a = 2
  	betArgBos.score_b = 0
  	betArgBos.save(:validation => false)

  	betIraNig = Bet.new(:betting_pool => fabioPool, :match => matchIraNig)
  	betIraNig.score_a = 1
  	betIraNig.score_b = 1
  	betIraNig.save(:validation => false)

  	betGerPor = Bet.new(:betting_pool => fabioPool, :match => matchGerPor)
  	betGerPor.score_a = 2
  	betGerPor.score_b = 0
  	betGerPor.save(:validation => false)

  	betGhaUSA = Bet.new(:betting_pool => fabioPool, :match => matchGhaUSA)
  	betGhaUSA.score_a = 1
  	betGhaUSA.score_b = 0
  	betGhaUSA.save(:validation => false)

  	betBelAlge = Bet.new(:betting_pool => fabioPool, :match => matchBelAlge)
  	betBelAlge.score_a = 1
  	betBelAlge.score_b = 0
  	betBelAlge.save(:validation => false)

  	betRusKor = Bet.new(:betting_pool => fabioPool, :match => matchRusKor)
  	betRusKor.score_a = 1
  	betRusKor.score_b = 1
  	betRusKor.save(:validation => false)

  	betBraMex = Bet.new(:betting_pool => fabioPool, :match => matchBraMex)
  	betBraMex.score_a = 2
  	betBraMex.score_b = 1
  	betBraMex.save(:validation => false)

  	betAusNet = Bet.new(:betting_pool => fabioPool, :match => matchAusNet)
  	betAusNet.score_a = 1
  	betAusNet.score_b = 3
  	betAusNet.save(:validation => false)

  end
end
