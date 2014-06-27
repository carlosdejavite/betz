class LoadRound16 < ActiveRecord::Migration
  def change
  	down
  	
  	worldCup = Tournament.find_by(:name => "2014 FIFA World Cup Brazil")

    round16 = Group.new(:name => "Round of 16",  :point => 200, :bonus => 50)
	round16.tournament = worldCup
	round16.save(:validate => false)

	brazil = Team.find_by(:name => "Brazil")
	chile = Team.find_by(:name => "Chile")
	matchBRAvsCHI = Match.new(:date_time => "2014-06-28 13:00:00 UTC-03:00")
	matchBRAvsCHI.group = round16
	matchBRAvsCHI.team_a = brazil
	matchBRAvsCHI.team_b = chile
	matchBRAvsCHI.save(:validate => false)
	
	colombia = Team.find_by(:name => "Colombia")
	uruguay = Team.find_by(:name => "Uruguay")
	matchCOLvsURU = Match.new(:date_time => "2014-06-28 17:00:00 UTC-03:00")
	matchCOLvsURU.group = round16
	matchCOLvsURU.team_a = colombia
	matchCOLvsURU.team_b = uruguay
	matchCOLvsURU.save(:validate => false)

	france = Team.find_by(:name => "France")
	nigeria = Team.find_by(:name => "Nigeria")
	matchFRAvsNIG = Match.new(:date_time => "2014-06-30 13:00:00 UTC-03:00")
	matchFRAvsNIG.group = round16
	matchFRAvsNIG.team_a = france
	matchFRAvsNIG.team_b = nigeria
	matchFRAvsNIG.save(:validate => false)

	germany = Team.find_by(:name => "Germany")
	algeria = Team.find_by(:name => "Algeria")
	matchGERvsALG = Match.new(:date_time => "2014-06-30 17:00:00 UTC-03:00")
	matchGERvsALG.group = round16
	matchGERvsALG.team_a = germany
	matchGERvsALG.team_b = algeria
	matchGERvsALG.save(:validate => false)

	netherlands = Team.find_by(:name => "Netherlands")
	mexico = Team.find_by(:name => "Mexico")
	matchNETvsMEX = Match.new(:date_time => "2014-06-29 13:00:00 UTC-03:00")
	matchNETvsMEX.group = round16
	matchNETvsMEX.team_a = netherlands
	matchNETvsMEX.team_b = mexico
	matchNETvsMEX.save(:validate => false)

	costa_rica = Team.find_by(:name => "Costa Rica")
	greece = Team.find_by(:name => "Greece")
	matchCOSvsGRE = Match.new(:date_time => "2014-06-29 17:00:00 UTC-03:00")
	matchCOSvsGRE.group = round16
	matchCOSvsGRE.team_a = costa_rica
	matchCOSvsGRE.team_b = greece
	matchCOSvsGRE.save(:validate => false)

	argentina = Team.find_by(:name => "Argentina")
	switzerland = Team.find_by(:name => "Switzerland")
	matchARGvsSWI = Match.new(:date_time => "2014-07-01 13:00:00 UTC-03:00")
	matchARGvsSWI.group = round16
	matchARGvsSWI.team_a = argentina
	matchARGvsSWI.team_b = switzerland
	matchARGvsSWI.save(:validate => false)

	belgium = Team.find_by(:name => "Belgium")
	usa = Team.find_by(:name => "USA")
	matchBELvsUSA = Match.new(:date_time => "2014-07-01 17:00:00 UTC-03:00")
	matchBELvsUSA.group = round16
	matchBELvsUSA.team_a = belgium
	matchBELvsUSA.team_b = usa
	matchBELvsUSA.save(:validate => false)
  end

  def down
  	round16 = Group.find_by(:name => "Round of 16")
  	Match.destroy_all(:group => round16)
  	Group.destroy_all(:name => "Round of 16")
  end
end
