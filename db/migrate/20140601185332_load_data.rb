class LoadData < ActiveRecord::Migration
	def up
	    # Create the tournament
	    down
	    worldCup = Tournament.new(:name => "2014 FIFA World Cup Brazil")
	    worldCup.save(:validate => false)

	    # Create groups of World Cup
	    groupA = Group.new(:name => "Group A",  :point => 10, :bonus => 5)
	    groupA.tournament = worldCup
	    groupA.save(:validate => false)

	    groupB = Group.new(:name => "Group B",  :point => 10, :bonus => 5)
	    groupB.tournament = worldCup
	    groupB.save(:validate => false)

	    groupC = Group.new(:name => "Group C",  :point => 10, :bonus => 5)
	    groupC.tournament = worldCup
	    groupC.save(:validate => false)

	    groupD = Group.new(:name => "Group D",  :point => 10, :bonus => 5)
	    groupD.tournament = worldCup
	    groupD.save(:validate => false)

	    groupE = Group.new(:name => "Group E",  :point => 10, :bonus => 5)
	    groupE.tournament = worldCup
	    groupE.save(:validate => false)

	    groupF = Group.new(:name => "Group F",  :point => 10, :bonus => 5)
	    groupF.tournament = worldCup
	    groupF.save(:validate => false)

	    groupG = Group.new(:name => "Group G",  :point => 10, :bonus => 5)
	    groupG.tournament = worldCup
	    groupG.save(:validate => false)

	    groupH = Group.new(:name => "Group H",  :point => 10, :bonus => 5)
	    groupH.tournament = worldCup
	    groupH.save(:validate => false)
	    
	    # Create teams of World Cup
	    algeria = Team.new(:name => "Algeria", :flag_filename => "algeria.png")
	    algeria.save(:validate => false)
	    
	    argentina = Team.new(:name => "Argentina", :flag_filename => "argentina.png")
	    argentina.save(:validate => false)

	    australia = Team.new(:name => "Australia", :flag_filename => "australia.png")
	    australia.save(:validate => false)

	    belgium = Team.new(:name => "Belgium", :flag_filename => "belgium.png")
	    belgium.save(:validate => false)

	    bosnia = Team.new(:name => "Bosnia", :flag_filename => "bosnia.png")
	    bosnia.save(:validate => false)

	    brazil = Team.new(:name => "Brazil", :flag_filename => "brazil.png")
	    brazil.save(:validate => false)

	    cameroon = Team.new(:name => "Cameroon", :flag_filename => "cameroon.png")
	    cameroon.save(:validate => false)

	    chile = Team.new(:name => "Chile", :flag_filename => "chile.png")
	    chile.save(:validate => false)
	    
	    colombia = Team.new(:name => "Colombia", :flag_filename => "colombia.png")
	    colombia.save(:validate => false)
	    
	    costa_rica = Team.new(:name => "Costa Rica", :flag_filename => "costa_rica.png")
	    costa_rica.save(:validate => false)

	    croatia = Team.new(:name => "Croatia", :flag_filename => "croatia.png")
	    croatia.save(:validate => false)

	    ecuador = Team.new(:name => "Ecuador", :flag_filename => "ecuador.png")
	    ecuador.save(:validate => false)

	    england = Team.new(:name => "England", :flag_filename => "england.png")
	    england.save(:validate => false)

	    france = Team.new(:name => "France", :flag_filename => "france.png")
	    france.save(:validate => false)

	    germany = Team.new(:name => "Germany", :flag_filename => "germany.png")
	    germany.save(:validate => false)

	    ghana = Team.new(:name => "Ghana", :flag_filename => "ghana.png")
	    ghana.save(:validate => false)

	    greece = Team.new(:name => "Greece", :flag_filename => "greece.png")
	    greece.save(:validate => false)

	    honduras = Team.new(:name => "Honduras", :flag_filename => "honduras.png")
	    honduras.save(:validate => false)

	    iran = Team.new(:name => "Iran", :flag_filename => "iran.png")
	    iran.save(:validate => false)

	    italy = Team.new(:name => "Italy", :flag_filename => "italy.png")
	    italy.save(:validate => false)

	    ivory_coast = Team.new(:name => "Ivory Coast", :flag_filename => "ivory_coast.png")
	    ivory_coast.save(:validate => false)

	    japan = Team.new(:name => "Japan", :flag_filename => "japan.png")
	    japan.save(:validate => false)

	    korea_republic = Team.new(:name => "Korea Republic", :flag_filename => "korea_republic.png")
	    korea_republic.save(:validate => false)

	    mexico = Team.new(:name => "Mexico", :flag_filename => "mexico.png")
	    mexico.save(:validate => false)

	    netherlands = Team.new(:name => "Netherlands", :flag_filename => "netherlands.png")
	    netherlands.save(:validate => false)

	    nigeria = Team.new(:name => "Nigeria", :flag_filename => "nigeria.png")
	    nigeria.save(:validate => false)

	    portugal = Team.new(:name => "Portugal", :flag_filename => "portugal.png")
	    portugal.save(:validate => false)

	    russia = Team.new(:name => "Russia", :flag_filename => "russia.png")
	    russia.save(:validate => false)

	    spain = Team.new(:name => "Spain", :flag_filename => "spain.png")
	    spain.save(:validate => false)

	    switzerland = Team.new(:name => "Switzerland", :flag_filename => "switzerland.png")
	    switzerland.save(:validate => false)

	    uruguay = Team.new(:name => "Uruguay", :flag_filename => "uruguay.png")
	    uruguay.save(:validate => false)

	    usa = Team.new(:name => "USA", :flag_filename => "usa.png")
	    usa.save(:validate => false)
	    
	    # Create matches of WorldCup
	    #group a
	    matchBRAvsCRO = Match.new(:date_time => "2014-06-12 17:00:00")
	    matchBRAvsCRO.group = groupA
	    matchBRAvsCRO.team_a = brazil
	    matchBRAvsCRO.team_b = croatia
	    matchBRAvsCRO.save(:validate => false)
	    
	   	matchMEXvsCAM = Match.new(:date_time => "2014-06-13 13:00:00")
	    matchMEXvsCAM.group = groupA
	    matchMEXvsCAM.team_a = mexico
	    matchMEXvsCAM.team_b = cameroon
	    matchMEXvsCAM.save(:validate => false)

	    matchBRAvsMEX = Match.new(:date_time => "2014-06-17 16:00:00")
	    matchBRAvsMEX.group = groupA
	    matchBRAvsMEX.team_a = brazil
	    matchBRAvsMEX.team_b = mexico
	    matchBRAvsMEX.save(:validate => false)

	    matchCROvsCAM = Match.new(:date_time => "2014-06-18 19:00:00")
	    matchCROvsCAM.group = groupA
	    matchCROvsCAM.team_a = croatia
	    matchCROvsCAM.team_b = cameroon
	    matchCROvsCAM.save(:validate => false)

	    matchCAMvsBRA = Match.new(:date_time => "2014-06-23 17:00:00")
	    matchCAMvsBRA.group = groupA
	    matchCAMvsBRA.team_a = cameroon
	    matchCAMvsBRA.team_b = brazil
	    matchCAMvsBRA.save(:validate => false)

	    matchCROvsMEX = Match.new(:date_time => "2014-06-23 17:00:00")
	    matchCROvsMEX.group = groupA
	    matchCROvsMEX.team_a = croatia
	    matchCROvsMEX.team_b = mexico
	    matchCROvsMEX.save(:validate => false)

	    #group b
	    matchSPAvsNET = Match.new(:date_time => "2014-06-13 16:00:00")
	    matchSPAvsNET.group = groupB
	    matchSPAvsNET.team_a = spain
	    matchSPAvsNET.team_b = netherlands
	    matchSPAvsNET.save(:validate => false)

	    matchCHIvsAUS = Match.new(:date_time => "2014-06-13 19:00:00")
	    matchCHIvsAUS.group = groupB
	    matchCHIvsAUS.team_a = chile
	    matchCHIvsAUS.team_b = australia
	    matchCHIvsAUS.save(:validate => false)

	    matchAUSvsNET = Match.new(:date_time => "2014-06-18 13:00:00")
	    matchAUSvsNET.group = groupB
	    matchAUSvsNET.team_a = australia
	    matchAUSvsNET.team_b = netherlands
	    matchAUSvsNET.save(:validate => false)

	    matchSPAvsCHI = Match.new(:date_time => "2014-06-18 16:00:00")
	    matchSPAvsCHI.group = groupB
	    matchSPAvsCHI.team_a = spain
	    matchSPAvsCHI.team_b = chile
	    matchSPAvsCHI.save(:validate => false)

	    matchAUSvsSPA = Match.new(:date_time => "2014-06-23 13:00:00")
	    matchAUSvsSPA.group = groupB
	    matchAUSvsSPA.team_a = australia
	    matchAUSvsSPA.team_b = spain
	    matchAUSvsSPA.save(:validate => false)

	    matchNETvsCHI = Match.new(:date_time => "2014-06-23 13:00:00")
	    matchNETvsCHI.group = groupB
	    matchNETvsCHI.team_a = netherlands
	    matchNETvsCHI.team_b = chile
	    matchNETvsCHI.save(:validate => false)

	    #group c
	    matchCOLvsGRE = Match.new(:date_time => "2014-06-14 13:00:00")
	    matchCOLvsGRE.group = groupC
	    matchCOLvsGRE.team_a = colombia
	    matchCOLvsGRE.team_b = greece
	    matchCOLvsGRE.save(:validate => false)

	    matchIVOvsJAP = Match.new(:date_time => "2014-06-14 22:00:00")
	    matchIVOvsJAP.group = groupC
	    matchIVOvsJAP.team_a = ivory_coast
	    matchIVOvsJAP.team_b = japan
	    matchIVOvsJAP.save(:validate => false)

	    matchCOLvsIVO = Match.new(:date_time => "2014-06-19 13:00:00")
	    matchCOLvsIVO.group = groupC
	    matchCOLvsIVO.team_a = colombia
	    matchCOLvsIVO.team_b = ivory_coast
	    matchCOLvsIVO.save(:validate => false)

	    matchJAPvsGRE = Match.new(:date_time => "2014-06-19 19:00:00")
	    matchJAPvsGRE.group = groupC
	    matchJAPvsGRE.team_a = japan
	    matchJAPvsGRE.team_b = greece
	    matchJAPvsGRE.save(:validate => false)

	    matchGREvsIVO = Match.new(:date_time => "2014-06-24 17:00:00")
	    matchGREvsIVO.group = groupC
	    matchGREvsIVO.team_a = greece
	    matchGREvsIVO.team_b = ivory_coast
	    matchGREvsIVO.save(:validate => false)

	    matchJAPvsCOL = Match.new(:date_time => "2014-06-24 17:00:00")
	    matchJAPvsCOL.group = groupC
	    matchJAPvsCOL.team_a = japan
	    matchJAPvsCOL.team_b = colombia
	    matchJAPvsCOL.save(:validate => false)
	    
	 	#group d
	    matchURUvsCOS = Match.new(:date_time => "2014-06-14 16:00:00")
	    matchURUvsCOS.group = groupD
	    matchURUvsCOS.team_a = uruguay
	    matchURUvsCOS.team_b = costa_rica
	    matchURUvsCOS.save(:validate => false)

	    matchENGvsITA = Match.new(:date_time => "2014-06-14 19:00:00")
	    matchENGvsITA.group = groupD
	    matchENGvsITA.team_a = england
	    matchENGvsITA.team_b = italy
	    matchENGvsITA.save(:validate => false)

	    matchURUvsENG = Match.new(:date_time => "2014-06-19 16:00:00")
	    matchURUvsENG.group = groupD
	    matchURUvsENG.team_a = uruguay
	    matchURUvsENG.team_b = england
	    matchURUvsENG.save(:validate => false)

	    matchITAvsCOS = Match.new(:date_time => "2014-06-20 13:00:00")
	    matchITAvsCOS.group = groupD
	    matchITAvsCOS.team_a = italy
	    matchITAvsCOS.team_b = costa_rica
	    matchITAvsCOS.save(:validate => false)

	    matchCOSvsENG = Match.new(:date_time => "2014-06-24 13:00:00")
	    matchCOSvsENG.group = groupD
	    matchCOSvsENG.team_a = costa_rica
	    matchCOSvsENG.team_b = england
	    matchCOSvsENG.save(:validate => false)

	    matchITAvsURU = Match.new(:date_time => "2014-06-24 13:00:00")
	    matchITAvsURU.group = groupD
	    matchITAvsURU.team_a = italy
	    matchITAvsURU.team_b = uruguay
	    matchITAvsURU.save(:validate => false)

	    #group e
	    matchSWIvsECU = Match.new(:date_time => "2014-06-15 13:00:00")
	    matchSWIvsECU.group = groupE
	    matchSWIvsECU.team_a = switzerland
	    matchSWIvsECU.team_b = ecuador
	    matchSWIvsECU.save(:validate => false)

	    matchFRAvsHON = Match.new(:date_time => "2014-06-15 16:00:00")
	    matchFRAvsHON.group = groupE
	    matchFRAvsHON.team_a = france
	    matchFRAvsHON.team_b = honduras
	    matchFRAvsHON.save(:validate => false)

	    matchSWIvsFRA = Match.new(:date_time => "2014-06-20 16:00:00")
	    matchSWIvsFRA.group = groupE
	    matchSWIvsFRA.team_a = switzerland
	    matchSWIvsFRA.team_b = france
	    matchSWIvsFRA.save(:validate => false)

	    matchHONvsECU = Match.new(:date_time => "2014-06-20 19:00:00")
	    matchHONvsECU.group = groupE
	    matchHONvsECU.team_a = honduras
	    matchHONvsECU.team_b = ecuador
	    matchHONvsECU.save(:validate => false)

	    matchECUvsFRA = Match.new(:date_time => "2014-06-25 17:00:00")
	    matchECUvsFRA.group = groupE
	    matchECUvsFRA.team_a = ecuador
	    matchECUvsFRA.team_b = france
	    matchECUvsFRA.save(:validate => false)

	    matchHONvsSWI = Match.new(:date_time => "2014-06-25 17:00:00")
	    matchHONvsSWI.group = groupE
	    matchHONvsSWI.team_a = honduras
	    matchHONvsSWI.team_b = switzerland
	    matchHONvsSWI.save(:validate => false)

	    #group f
	    matchARGvsBOS = Match.new(:date_time => "2014-06-15 19:00:00")
	    matchARGvsBOS.group = groupF
	    matchARGvsBOS.team_a = argentina
	    matchARGvsBOS.team_b = bosnia
	    matchARGvsBOS.save(:validate => false)

	    matchIRAvsNIG = Match.new(:date_time => "2014-06-16 16:00:00")
	    matchIRAvsNIG.group = groupF
	    matchIRAvsNIG.team_a = iran
	    matchIRAvsNIG.team_b = nigeria
	    matchIRAvsNIG.save(:validate => false)

	    matchARGvsIRA = Match.new(:date_time => "2014-06-21 13:00:00")
	    matchARGvsIRA.group = groupF
	    matchARGvsIRA.team_a = argentina
	    matchARGvsIRA.team_b = iran
	    matchARGvsIRA.save(:validate => false)

	    matchNIGvsBOS = Match.new(:date_time => "2014-06-21 19:00:00")
	    matchNIGvsBOS.group = groupF
	    matchNIGvsBOS.team_a = nigeria
	    matchNIGvsBOS.team_b = bosnia
	    matchNIGvsBOS.save(:validate => false)

	    matchBOSvsIRA = Match.new(:date_time => "2014-06-25 13:00:00")
	    matchBOSvsIRA.group = groupF
	    matchBOSvsIRA.team_a = bosnia
	    matchBOSvsIRA.team_b = iran
	    matchBOSvsIRA.save(:validate => false)

	    matchNIGvsARG = Match.new(:date_time => "2014-06-25 13:00:00")
	    matchNIGvsARG.group = groupF
	    matchNIGvsARG.team_a = nigeria
	    matchNIGvsARG.team_b = argentina
	    matchNIGvsARG.save(:validate => false)

	    #group g
	    matchGERvsPOR = Match.new(:date_time => "2014-06-16 13:00:00")
	    matchGERvsPOR.group = groupG
	    matchGERvsPOR.team_a = germany
	    matchGERvsPOR.team_b = portugal
	    matchGERvsPOR.save(:validate => false)

	    matchGHAvsUSA = Match.new(:date_time => "2014-06-16 19:00:00")
	    matchGHAvsUSA.group = groupG
	    matchGHAvsUSA.team_a = ghana
	    matchGHAvsUSA.team_b = usa
	    matchGHAvsUSA.save(:validate => false)

	    matchGERvsGHA = Match.new(:date_time => "2014-06-21 16:00:00")
	    matchGERvsGHA.group = groupG
	    matchGERvsGHA.team_a = germany
	    matchGERvsGHA.team_b = ghana
	    matchGERvsGHA.save(:validate => false)

	    matchUSAvsPOR = Match.new(:date_time => "2014-06-22 19:00:00")
	    matchUSAvsPOR.group = groupG
	    matchUSAvsPOR.team_a = usa
	    matchUSAvsPOR.team_b = portugal
	    matchUSAvsPOR.save(:validate => false)

	    matchPORvsGHA = Match.new(:date_time => "2014-06-26 13:00:00")
	    matchPORvsGHA.group = groupG
	    matchPORvsGHA.team_a = portugal
	    matchPORvsGHA.team_b = ghana
	    matchPORvsGHA.save(:validate => false)

	    matchUSAvsGER = Match.new(:date_time => "2014-06-26 13:00:00")
	    matchUSAvsGER.group = groupG
	    matchUSAvsGER.team_a = usa
	    matchUSAvsGER.team_b = germany
	    matchUSAvsGER.save(:validate => false)

	    #group h
	    matchBELvsALG = Match.new(:date_time => "2014-06-17 13:00:00")
	    matchBELvsALG.group = groupG
	    matchBELvsALG.team_a = belgium
	    matchBELvsALG.team_b = algeria
	    matchBELvsALG.save(:validate => false)

	    matchRUSvsKOR = Match.new(:date_time => "2014-06-17 19:00:00")
	    matchRUSvsKOR.group = groupG
	    matchRUSvsKOR.team_a = russia
	    matchRUSvsKOR.team_b = korea_republic
	    matchRUSvsKOR.save(:validate => false)

	    matchBELvsRUS = Match.new(:date_time => "2014-06-22 13:00:00")
	    matchBELvsRUS.group = groupG
	    matchBELvsRUS.team_a = belgium
	    matchBELvsRUS.team_b = russia
	    matchBELvsRUS.save(:validate => false)

	    matchKORvsALG = Match.new(:date_time => "2014-06-22 16:00:00")
	    matchKORvsALG.group = groupG
	    matchKORvsALG.team_a = korea_republic
	    matchKORvsALG.team_b = algeria
	    matchKORvsALG.save(:validate => false)

	    matchALGvsRUS = Match.new(:date_time => "2014-06-26 17:00:00")
	    matchALGvsRUS.group = groupG
	    matchALGvsRUS.team_a = algeria
	    matchALGvsRUS.team_b = russia
	    matchALGvsRUS.save(:validate => false)

	    matchKORvsBEL = Match.new(:date_time => "2014-06-26 17:00:00")
	    matchKORvsBEL.group = groupG
	    matchKORvsBEL.team_a = korea_republic
	    matchKORvsBEL.team_b = belgium
	    matchKORvsBEL.save(:validate => false)
  	end

  	def down
      	Match.delete_all
      	Team.delete_all
      	Group.delete_all
      	Tournament.delete_all
  	end
end
