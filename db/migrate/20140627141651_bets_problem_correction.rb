class BetsProblemCorrection < ActiveRecord::Migration
  def change
  	gsbBets = League.find_by(:name => "GSBets World Cup Brazil")

  	#take out bets
  	antonyUser = User.find_by(:email => "ads7@stanford.edu")
  	reinUser = User.find_by(:email => "rekl@stanford.edu")
  	mattUser = User.find_by(:email => "msauce@stanford.edu")
  	fleeterUser = User.find_by(:email => "dfleeter@stanford.edu")
  	elliotUser = User.find_by(:email => "damashek@stanford.edu")
  	ericUser = User.find_by(:email => "reuland@stanford.edu")

  	antonyPool = BettingPool.find_by(:user => antonyUser, :league => gsbBets)
  	antonyPool.bet_amount = 0
  	antonyPool.save(:validation => false)

  	reinPool = BettingPool.find_by(:user => reinUser, :league => gsbBets)
  	reinPool.bet_amount = 0
  	reinPool.save(:validation => false)

  	mattPool = BettingPool.find_by(:user => mattUser, :league => gsbBets)
  	mattPool.bet_amount = 0
  	mattPool.save(:validation => false)

  	fleeterPool = BettingPool.find_by(:user => fleeterUser, :league => gsbBets)
  	fleeterPool.bet_amount = 0
  	fleeterPool.save(:validation => false)

  	elliotPool = BettingPool.find_by(:user => elliotUser, :league => gsbBets)
  	elliotPool.bet_amount = 0
  	elliotPool.save(:validation => false)

  	ericPool = BettingPool.find_by(:user => ericUser, :league => gsbBets)
  	ericPool.bet_amount = 0
  	ericPool.save(:validation => false)

  	#re-input missed bets

  	matchBraCro = Match.find(1)
  	matchMexCam = Match.find(2)
  	matchBraMex = Match.find(3)
  	matchCroCam = Match.find(4)

  	matchSpaNet = Match.find(7)
  	matchChiAus = Match.find(8)
  	matchAusNet = Match.find(9)
  	matchSpaChi = Match.find(10)

  	matchColGre = Match.find(13)
  	matchIvoJap = Match.find(14)
  	matchColIvo = Match.find(15)
  	matchJapGre = Match.find(16)

  	matchUruCos = Match.find(19)
  	matchEngIta = Match.find(20)
  	matchUruEng = Match.find(21)
  	matchItaCos = Match.find(22)

  	matchSwiEcu = Match.find(25)
  	matchFraHon = Match.find(26)
  	matchSwiFra = Match.find(27)
  	matchHonEcu = Match.find(28)

  	matchArgBos = Match.find(31)
  	matchIraNig = Match.find(32)
  	matchArgIra = Match.find(33)
  	matchNigBos = Match.find(34)

  	matchGerPor = Match.find(37)
  	matchGhaUSA = Match.find(38)
  	matchGerGha = Match.find(39)
  	matchUSAPor = Match.find(40)

  	matchBelAlg = Match.find(43)
  	matchRusKor = Match.find(44)
  	matchBelRus = Match.find(45)
  	matchKorAlg = Match.find(46)

  	#Lucas Bets
  	lucasUser = User.find_by(:email => "lmendes@stanford.edu")
  	lucasPool = BettingPool.find_by(:user => lucasUser, :league => gsbBets)

  	betItaCos = Bet.find_by(:betting_pool => lucasPool, :match => matchItaCos)
  	betItaCos.score_a = 4
  	betItaCos.score_b = 1
  	betItaCos.save(:validation => false)

  	betFraHon = Bet.find_by(:betting_pool => lucasPool, :match => matchFraHon)
  	betFraHon.score_a = 3
  	betFraHon.score_b = 0
  	betFraHon.save(:validation => false)

  	betMexCam = Bet.find_by(:betting_pool => lucasPool, :match => matchMexCam)
  	betMexCam.score_a = 1
  	betMexCam.score_b = 0
  	betMexCam.save(:validation => false)

  	betChiAus = Bet.find_by(:betting_pool => lucasPool, :match => matchChiAus)
  	betChiAus.score_a = 2
  	betChiAus.score_b = 0
  	betChiAus.save(:validation => false)

  	betGhaUSA = Bet.find_by(:betting_pool => lucasPool, :match => matchGhaUSA)
  	betGhaUSA.score_a = 2
  	betGhaUSA.score_b = 1
  	betGhaUSA.save(:validation => false)

    betBraCro = Bet.find_by(:betting_pool => lucasPool, :match => matchBraCro)
    betBraCro.score_a = 3
    betBraCro.score_b = 0
    betBraCro.save(:validation => false)

  	betBelAlg = Bet.find_by(:betting_pool => lucasPool, :match => matchBelAlg)
  	betBelAlg.score_a = 3
  	betBelAlg.score_b = 0
  	betBelAlg.save(:validation => false)

  	betAusNet = Bet.find_by(:betting_pool => lucasPool, :match => matchAusNet)
  	betAusNet.score_a = 0
  	betAusNet.score_b = 4
  	betAusNet.save(:validation => false)

  	betColGre = Bet.find_by(:betting_pool => lucasPool, :match => matchColGre)
  	betColGre.score_a = 0
  	betColGre.score_b = 0
  	betColGre.save(:validation => false)

  	betSwiEcu = Bet.find_by(:betting_pool => lucasPool, :match => matchSwiEcu)
  	betSwiEcu.score_a = 1
  	betSwiEcu.score_b = 0
  	betSwiEcu.save(:validation => false)

  	betIvoJap = Bet.find_by(:betting_pool => lucasPool, :match => matchIvoJap)
  	betIvoJap.score_a = 1
  	betIvoJap.score_b = 0
  	betIvoJap.save(:validation => false)

  	betEngIta = Bet.find_by(:betting_pool => lucasPool, :match => matchEngIta)
  	betEngIta.score_a = 0
  	betEngIta.score_b = 2
  	betEngIta.save(:validation => false)

  	betArgBos = Bet.find_by(:betting_pool => lucasPool, :match => matchArgBos)
  	betArgBos.score_a = 4
  	betArgBos.score_b = 1
  	betArgBos.save(:validation => false)

  	betIraNig = Bet.find_by(:betting_pool => lucasPool, :match => matchIraNig)
  	betIraNig.score_a = 0
  	betIraNig.score_b = 2
  	betIraNig.save(:validation => false)

  	betRusKor = Bet.find_by(:betting_pool => lucasPool, :match => matchRusKor)
  	betRusKor.score_a = 2
  	betRusKor.score_b = 0
  	betRusKor.save(:validation => false)

  	betCroCam = Bet.find_by(:betting_pool => lucasPool, :match => matchCroCam)
  	betCroCam.score_a = 3
  	betCroCam.score_b = 0
  	betCroCam.save(:validation => false)

  	betUruCos = Bet.find_by(:betting_pool => lucasPool, :match => matchUruCos)
  	betUruCos.score_a = 3
  	betUruCos.score_b = 0
  	betUruCos.save(:validation => false)

  	betJapGre = Bet.find_by(:betting_pool => lucasPool, :match => matchJapGre)
  	betJapGre.score_a = 0
  	betJapGre.score_b = 1
  	betJapGre.save(:validation => false)

  	betSwiFra = Bet.find_by(:betting_pool => lucasPool, :match => matchSwiFra)
  	betSwiFra.score_a = 1
  	betSwiFra.score_b = 0
  	betSwiFra.save(:validation => false)

  	betColIvo = Bet.find_by(:betting_pool => lucasPool, :match => matchColIvo)
  	betColIvo.score_a = 1
  	betColIvo.score_b = 0
  	betColIvo.save(:validation => false)

  	betBraMex = Bet.find_by(:betting_pool => lucasPool, :match => matchBraMex)
  	betBraMex.score_a = 2
  	betBraMex.score_b = 1
  	betBraMex.save(:validation => false)

  	betSpaNet = Bet.find_by(:betting_pool => lucasPool, :match => matchSpaNet)
  	betSpaNet.score_a = 1
  	betSpaNet.score_b = 1
  	betSpaNet.save(:validation => false)

  	betSpaChi = Bet.find_by(:betting_pool => lucasPool, :match => matchSpaChi)
  	betSpaChi.score_a = 2
  	betSpaChi.score_b = 0
  	betSpaChi.save(:validation => false)

  	betGerPor = Bet.find_by(:betting_pool => lucasPool, :match => matchGerPor)
  	betGerPor.score_a = 2
  	betGerPor.score_b = 1
  	betGerPor.save(:validation => false)

  	betHonEcu = Bet.find_by(:betting_pool => lucasPool, :match => matchHonEcu)
  	betHonEcu.score_a = 0
  	betHonEcu.score_b = 2
  	betHonEcu.save(:validation => false)

  	betUruEng = Bet.find_by(:betting_pool => lucasPool, :match => matchUruEng)
  	betUruEng.score_a = 1
  	betUruEng.score_b = 1
  	betUruEng.save(:validation => false)

  	#Andre Bets
	 andreUser = User.find_by(:email => "afreire@stanford.edu")
  	andrePool = BettingPool.find_by(:user => andreUser, :league => gsbBets)

  	betBraCro = Bet.find_by(:betting_pool => andrePool, :match => matchBraCro)
  	betBraCro.score_a = 3
  	betBraCro.score_b = 0
  	betBraCro.save(:validation => false)

  	betMexCam = Bet.find_by(:betting_pool => andrePool, :match => matchMexCam)
  	betMexCam.score_a = 2
  	betMexCam.score_b = 0
  	betMexCam.save(:validation => false)

  	betBraMex = Bet.find_by(:betting_pool => andrePool, :match => matchBraMex)
  	betBraMex.score_a = 2
  	betBraMex.score_b = 1
  	betBraMex.save(:validation => false)

  	betCroCam = Bet.find_by(:betting_pool => andrePool, :match => matchCroCam)
  	betCroCam.score_a = 2
  	betCroCam.score_b = 1
  	betCroCam.save(:validation => false)

  	betSpaNet = Bet.find_by(:betting_pool => andrePool, :match => matchSpaNet)
  	betSpaNet.score_a = 0
  	betSpaNet.score_b = 0
  	betSpaNet.save(:validation => false)

  	betChiAus = Bet.find_by(:betting_pool => andrePool, :match => matchChiAus)
  	betChiAus.score_a = 1
  	betChiAus.score_b = 0
  	betChiAus.save(:validation => false)

  	betAusNet = Bet.find_by(:betting_pool => andrePool, :match => matchAusNet)
  	betAusNet.score_a = 0
  	betAusNet.score_b = 2
  	betAusNet.save(:validation => false)

  	betSpaChi = Bet.find_by(:betting_pool => andrePool, :match => matchSpaChi)
  	betSpaChi.score_a = 1
  	betSpaChi.score_b = 1
  	betSpaChi.save(:validation => false)

  	betColGre = Bet.find_by(:betting_pool => andrePool, :match => matchColGre)
  	betColGre.score_a = 1
  	betColGre.score_b = 0
  	betColGre.save(:validation => false)

  	betIvoJap = Bet.find_by(:betting_pool => andrePool, :match => matchIvoJap)
  	betIvoJap.score_a = 1
  	betIvoJap.score_b = 1
  	betIvoJap.save(:validation => false)

  	betColIvo = Bet.find_by(:betting_pool => andrePool, :match => matchColIvo)
  	betColIvo.score_a = 1
  	betColIvo.score_b = 1
  	betColIvo.save(:validation => false)

  	betJapGre = Bet.find_by(:betting_pool => andrePool, :match => matchJapGre)
  	betJapGre.score_a = 2
  	betJapGre.score_b = 0
  	betJapGre.save(:validation => false)

  	betUruCos = Bet.find_by(:betting_pool => andrePool, :match => matchUruCos)
  	betUruCos.score_a = 2
  	betUruCos.score_b = 0
  	betUruCos.save(:validation => false)

  	betEngIta = Bet.find_by(:betting_pool => andrePool, :match => matchEngIta)
  	betEngIta.score_a = 0
  	betEngIta.score_b = 2
  	betEngIta.save(:validation => false)

  	betUruEng = Bet.find_by(:betting_pool => andrePool, :match => matchUruEng)
  	betUruEng.score_a = 1
  	betUruEng.score_b = 1
  	betUruEng.save(:validation => false)

  	betItaCos = Bet.find_by(:betting_pool => andrePool, :match => matchItaCos)
  	betItaCos.score_a = 0
  	betItaCos.score_b = 0
  	betItaCos.save(:validation => false)

  	betSwiEcu = Bet.find_by(:betting_pool => andrePool, :match => matchSwiEcu)
  	betSwiEcu.score_a = 0
  	betSwiEcu.score_b = 0
  	betSwiEcu.save(:validation => false)

  	betFraHon = Bet.find_by(:betting_pool => andrePool, :match => matchFraHon)
  	betFraHon.score_a = 1
  	betFraHon.score_b = 0
  	betFraHon.save(:validation => false)

  	betSwiFra = Bet.find_by(:betting_pool => andrePool, :match => matchSwiFra)
  	betSwiFra.score_a = 2
  	betSwiFra.score_b = 1
  	betSwiFra.save(:validation => false)

  	betHonEcu = Bet.find_by(:betting_pool => andrePool, :match => matchHonEcu)
  	betHonEcu.score_a = 0
  	betHonEcu.score_b = 1
  	betHonEcu.save(:validation => false)

  	betArgBos = Bet.find_by(:betting_pool => andrePool, :match => matchArgBos)
  	betArgBos.score_a = 5
  	betArgBos.score_b = 1
  	betArgBos.save(:validation => false)

  	betIraNig = Bet.find_by(:betting_pool => andrePool, :match => matchIraNig)
  	betIraNig.score_a = 0
  	betIraNig.score_b = 3
  	betIraNig.save(:validation => false)

  	betArgIra = Bet.find_by(:betting_pool => andrePool, :match => matchArgIra)
  	betArgIra.score_a = 3
  	betArgIra.score_b = 1
  	betArgIra.save(:validation => false)

  	betNigBos = Bet.find_by(:betting_pool => andrePool, :match => matchNigBos)
  	betNigBos.score_a = 1
  	betNigBos.score_b = 1
  	betNigBos.save(:validation => false)

  	betGerPor = Bet.find_by(:betting_pool => andrePool, :match => matchGerPor)
  	betGerPor.score_a = 0
  	betGerPor.score_b = 0
  	betGerPor.save(:validation => false)

  	betGhaUSA = Bet.find_by(:betting_pool => andrePool, :match => matchGhaUSA)
  	betGhaUSA.score_a = 1
  	betGhaUSA.score_b = 1
  	betGhaUSA.save(:validation => false)

  	betGerGha = Bet.find_by(:betting_pool => andrePool, :match => matchGerGha)
  	betGerGha.score_a = 2
  	betGerGha.score_b = 0
  	betGerGha.save(:validation => false)

  	betUSAPor = Bet.find_by(:betting_pool => andrePool, :match => matchUSAPor)
  	betUSAPor.score_a = 2
  	betUSAPor.score_b = 2
  	betUSAPor.save(:validation => false)

  	betBelAlg = Bet.find_by(:betting_pool => andrePool, :match => matchBelAlg)
  	betBelAlg.score_a = 2
  	betBelAlg.score_b = 0
  	betBelAlg.save(:validation => false)

  	betRusKor = Bet.find_by(:betting_pool => andrePool, :match => matchRusKor)
  	betRusKor.score_a = 1
  	betRusKor.score_b = 0
  	betRusKor.save(:validation => false)

  	betBelRus = Bet.find_by(:betting_pool => andrePool, :match => matchBelRus)
  	betBelRus.score_a = 2
  	betBelRus.score_b = 1
  	betBelRus.save(:validation => false)

  	betKorAlg = Bet.find_by(:betting_pool => andrePool, :match => matchKorAlg)
  	betKorAlg.score_a = 3
  	betKorAlg.score_b = 0
  	betKorAlg.save(:validation => false)

  	#Shang Bets
	  shangUser = User.find_by(:email => "shanzh@stanford.edu")
  	shangPool = BettingPool.find_by(:user => shangUser, :league => gsbBets)

  	betBraCro = Bet.find_by(:betting_pool => shangPool, :match => matchBraCro)
  	betBraCro.score_a = 2
  	betBraCro.score_b = 1
  	betBraCro.save(:validation => false)

  	betMexCam = Bet.find_by(:betting_pool => shangPool, :match => matchMexCam)
  	betMexCam.score_a = 1
  	betMexCam.score_b = 0
  	betMexCam.save(:validation => false)

  	betBraMex = Bet.find_by(:betting_pool => shangPool, :match => matchBraMex)
  	betBraMex.score_a = 1
  	betBraMex.score_b = 0
  	betBraMex.save(:validation => false)

  	betCroCam = Bet.find_by(:betting_pool => shangPool, :match => matchCroCam)
  	betCroCam.score_a = 2
  	betCroCam.score_b = 1
  	betCroCam.save(:validation => false)

  	betSpaNet = Bet.find_by(:betting_pool => shangPool, :match => matchSpaNet)
  	betSpaNet.score_a = 1
  	betSpaNet.score_b = 1
  	betSpaNet.save(:validation => false)

  	betChiAus = Bet.find_by(:betting_pool => shangPool, :match => matchChiAus)
  	betChiAus.score_a = 2
  	betChiAus.score_b = 0
  	betChiAus.save(:validation => false)

  	betAusNet = Bet.find_by(:betting_pool => shangPool, :match => matchAusNet)
  	betAusNet.score_a = 0
  	betAusNet.score_b = 2
  	betAusNet.save(:validation => false)

  	betSpaChi = Bet.find_by(:betting_pool => shangPool, :match => matchSpaChi)
  	betSpaChi.score_a = 2
  	betSpaChi.score_b = 1
  	betSpaChi.save(:validation => false)

  	betColGre = Bet.find_by(:betting_pool => shangPool, :match => matchColGre)
  	betColGre.score_a = 2
  	betColGre.score_b = 0
  	betColGre.save(:validation => false)

  	betIvoJap = Bet.find_by(:betting_pool => shangPool, :match => matchIvoJap)
  	betIvoJap.score_a = 2
  	betIvoJap.score_b = 0
  	betIvoJap.save(:validation => false)

  	betUruCos = Bet.find_by(:betting_pool => shangPool, :match => matchUruCos)
  	betUruCos.score_a = 2
  	betUruCos.score_b = 0
  	betUruCos.save(:validation => false)

  	betEngIta = Bet.find_by(:betting_pool => shangPool, :match => matchEngIta)
  	betEngIta.score_a = 1
  	betEngIta.score_b = 2
  	betEngIta.save(:validation => false)

  	betSwiEcu = Bet.find_by(:betting_pool => shangPool, :match => matchSwiEcu)
  	betSwiEcu.score_a = 0
  	betSwiEcu.score_b = 1
  	betSwiEcu.save(:validation => false)

  	betFraHon = Bet.find_by(:betting_pool => shangPool, :match => matchFraHon)
  	betFraHon.score_a = 2
  	betFraHon.score_b = 0
  	betFraHon.save(:validation => false)

  	betArgBos = Bet.find_by(:betting_pool => shangPool, :match => matchArgBos)
  	betArgBos.score_a = 3
  	betArgBos.score_b = 0
  	betArgBos.save(:validation => false)

  	betIraNig = Bet.find_by(:betting_pool => shangPool, :match => matchIraNig)
  	betIraNig.score_a = 0
  	betIraNig.score_b = 2
  	betIraNig.save(:validation => false)

  	betGerPor = Bet.find_by(:betting_pool => shangPool, :match => matchGerPor)
  	betGerPor.score_a = 2
  	betGerPor.score_b = 1
  	betGerPor.save(:validation => false)

  	betGhaUSA = Bet.find_by(:betting_pool => shangPool, :match => matchGhaUSA)
  	betGhaUSA.score_a = 1
  	betGhaUSA.score_b = 2
  	betGhaUSA.save(:validation => false)

  	betBelAlg = Bet.find_by(:betting_pool => shangPool, :match => matchBelAlg)
  	betBelAlg.score_a = 2
  	betBelAlg.score_b = 0
  	betBelAlg.save(:validation => false)

  	betRusKor = Bet.find_by(:betting_pool => shangPool, :match => matchRusKor)
  	betRusKor.score_a = 1
  	betRusKor.score_b = 0
  	betRusKor.save(:validation => false)

  	#Gui Bets
	  guiUser = User.find_by(:email => "gtelles@stanford.edu")
  	guiPool = BettingPool.find_by(:user => guiUser, :league => gsbBets)

  	betBraCro = Bet.find_by(:betting_pool => guiPool, :match => matchBraCro)
  	betBraCro.score_a = 3
  	betBraCro.score_b = 1
  	betBraCro.save(:validation => false)

  	betMexCam = Bet.find_by(:betting_pool => guiPool, :match => matchMexCam)
  	betMexCam.score_a = 0
  	betMexCam.score_b = 0
  	betMexCam.save(:validation => false)

  	betBraMex = Bet.find_by(:betting_pool => guiPool, :match => matchBraMex)
  	betBraMex.score_a = 2
  	betBraMex.score_b = 1
  	betBraMex.save(:validation => false)

  	betCroCam = Bet.find_by(:betting_pool => guiPool, :match => matchCroCam)
  	betCroCam.score_a = 1
  	betCroCam.score_b = 2
  	betCroCam.save(:validation => false)

  	betSpaNet = Bet.find_by(:betting_pool => guiPool, :match => matchSpaNet)
  	betSpaNet.score_a = 2
  	betSpaNet.score_b = 1
  	betSpaNet.save(:validation => false)

  	betChiAus = Bet.find_by(:betting_pool => guiPool, :match => matchChiAus)
  	betChiAus.score_a = 1
  	betChiAus.score_b = 0
  	betChiAus.save(:validation => false)

  	betAusNet = Bet.find_by(:betting_pool => guiPool, :match => matchAusNet)
  	betAusNet.score_a = 0
  	betAusNet.score_b = 2
  	betAusNet.save(:validation => false)

  	betSpaChi = Bet.find_by(:betting_pool => guiPool, :match => matchSpaChi)
  	betSpaChi.score_a = 2
  	betSpaChi.score_b = 0
  	betSpaChi.save(:validation => false)

  	betColGre = Bet.find_by(:betting_pool => guiPool, :match => matchColGre)
  	betColGre.score_a = 1
  	betColGre.score_b = 0
  	betColGre.save(:validation => false)

  	betIvoJap = Bet.find_by(:betting_pool => guiPool, :match => matchIvoJap)
  	betIvoJap.score_a = 1
  	betIvoJap.score_b = 1
  	betIvoJap.save(:validation => false)

  	betColIvo = Bet.find_by(:betting_pool => guiPool, :match => matchColIvo)
  	betColIvo.score_a = 1
  	betColIvo.score_b = 1
  	betColIvo.save(:validation => false)

  	betJapGre = Bet.find_by(:betting_pool => guiPool, :match => matchJapGre)
  	betJapGre.score_a = 2
  	betJapGre.score_b = 0
  	betJapGre.save(:validation => false)

  	betUruCos = Bet.find_by(:betting_pool => guiPool, :match => matchUruCos)
  	betUruCos.score_a = 2
  	betUruCos.score_b = 0
  	betUruCos.save(:validation => false)

  	betEngIta = Bet.find_by(:betting_pool => guiPool, :match => matchEngIta)
  	betEngIta.score_a = 0
  	betEngIta.score_b = 2
  	betEngIta.save(:validation => false)

  	betUruEng = Bet.find_by(:betting_pool => guiPool, :match => matchUruEng)
  	betUruEng.score_a = 1
  	betUruEng.score_b = 2
  	betUruEng.save(:validation => false)

  	betItaCos = Bet.find_by(:betting_pool => guiPool, :match => matchItaCos)
  	betItaCos.score_a = 0
  	betItaCos.score_b = 0
  	betItaCos.save(:validation => false)

  	betSwiEcu = Bet.find_by(:betting_pool => guiPool, :match => matchSwiEcu)
  	betSwiEcu.score_a = 0
  	betSwiEcu.score_b = 0
  	betSwiEcu.save(:validation => false)

  	betFraHon = Bet.find_by(:betting_pool => guiPool, :match => matchFraHon)
  	betFraHon.score_a = 1
  	betFraHon.score_b = 0
  	betFraHon.save(:validation => false)

  	betSwiFra = Bet.find_by(:betting_pool => guiPool, :match => matchSwiFra)
  	betSwiFra.score_a = 2
  	betSwiFra.score_b = 1
  	betSwiFra.save(:validation => false)

  	betHonEcu = Bet.find_by(:betting_pool => guiPool, :match => matchHonEcu)
  	betHonEcu.score_a = 0
  	betHonEcu.score_b = 1
  	betHonEcu.save(:validation => false)

  	betArgBos = Bet.find_by(:betting_pool => guiPool, :match => matchArgBos)
  	betArgBos.score_a = 5
  	betArgBos.score_b = 1
  	betArgBos.save(:validation => false)

  	betIraNig = Bet.find_by(:betting_pool => guiPool, :match => matchIraNig)
  	betIraNig.score_a = 0
  	betIraNig.score_b = 3
  	betIraNig.save(:validation => false)

  	betArgIra = Bet.find_by(:betting_pool => guiPool, :match => matchArgIra)
  	betArgIra.score_a = 3
  	betArgIra.score_b = 1
  	betArgIra.save(:validation => false)

  	betNigBos = Bet.find_by(:betting_pool => guiPool, :match => matchNigBos)
  	betNigBos.score_a = 1
  	betNigBos.score_b = 1
  	betNigBos.save(:validation => false)

  	betGerPor = Bet.find_by(:betting_pool => guiPool, :match => matchGerPor)
  	betGerPor.score_a = 0
  	betGerPor.score_b = 0
  	betGerPor.save(:validation => false)

  	betGhaUSA = Bet.find_by(:betting_pool => guiPool, :match => matchGhaUSA)
  	betGhaUSA.score_a = 1
  	betGhaUSA.score_b = 1
  	betGhaUSA.save(:validation => false)

  	betGerGha = Bet.find_by(:betting_pool => guiPool, :match => matchGerGha)
  	betGerGha.score_a = 2
  	betGerGha.score_b = 0
  	betGerGha.save(:validation => false)

  	betUSAPor = Bet.find_by(:betting_pool => guiPool, :match => matchUSAPor)
  	betUSAPor.score_a = 1
  	betUSAPor.score_b = 0
  	betUSAPor.save(:validation => false)

  	betBelAlg = Bet.find_by(:betting_pool => guiPool, :match => matchBelAlg)
  	betBelAlg.score_a = 2
  	betBelAlg.score_b = 0
  	betBelAlg.save(:validation => false)

  	betRusKor = Bet.find_by(:betting_pool => guiPool, :match => matchRusKor)
  	betRusKor.score_a = 1
  	betRusKor.score_b = 0
  	betRusKor.save(:validation => false)

  	betBelRus = Bet.find_by(:betting_pool => guiPool, :match => matchBelRus)
  	betBelRus.score_a = 2
  	betBelRus.score_b = 1
  	betBelRus.save(:validation => false)

  	betKorAlg = Bet.find_by(:betting_pool => guiPool, :match => matchKorAlg)
  	betKorAlg.score_a = 3
  	betKorAlg.score_b = 0
  	betKorAlg.save(:validation => false)

  end
end
