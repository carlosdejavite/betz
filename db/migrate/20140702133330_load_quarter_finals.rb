class LoadQuarterFinals < ActiveRecord::Migration
  def change
  	down
  	
  	worldCup = Tournament.find_by(:name => "2014 FIFA World Cup Brazil")

    quarterFinals = Group.new(:name => "Quarter Finals",  :point => 200, :bonus => 50)
	quarterFinals.tournament = worldCup
	quarterFinals.is_rankable = false
	quarterFinals.save(:validate => false)

	brazil = Team.find_by(:name => "Brazil")
	colombia = Team.find_by(:name => "Colombia")
	matchBRAvsCOL = Match.new(:date_time => "2014-07-04 17:00:00 UTC-03:00")
	matchBRAvsCOL.group = quarterFinals
	matchBRAvsCOL.team_a = brazil
	matchBRAvsCOL.team_b = colombia
	matchBRAvsCOL.save(:validate => false)
	
	germany = Team.find_by(:name => "Germany")
	france = Team.find_by(:name => "France")
	matchGERvsFRA = Match.new(:date_time => "2014-07-04 13:00:00 UTC-03:00")
	matchGERvsFRA.group = quarterFinals
	matchGERvsFRA.team_a = germany
	matchGERvsFRA.team_b = france
	matchGERvsFRA.save(:validate => false)

	netherlands = Team.find_by(:name => "Netherlands")
	costa_rica = Team.find_by(:name => "Costa Rica")
	matchNETvsCOS = Match.new(:date_time => "2014-07-05 17:00:00 UTC-03:00")
	matchNETvsCOS.group = quarterFinals
	matchNETvsCOS.team_a = netherlands
	matchNETvsCOS.team_b = costa_rica
	matchNETvsCOS.save(:validate => false)

	argentina = Team.find_by(:name => "Argentina")
	belgium = Team.find_by(:name => "Belgium")
	matchARGvsBEL = Match.new(:date_time => "2014-07-05 13:00:00 UTC-03:00")
	matchARGvsBEL.group = quarterFinals
	matchARGvsBEL.team_a = argentina
	matchARGvsBEL.team_b = belgium
	matchARGvsBEL.save(:validate => false)

  end

  def down
  	quarterFinals = Group.find_by(:name => "Quarter Finals")
  	if quarterFinals != nil then
  		Match.destroy_all(:group => quarterFinals)
  		Group.destroy_all(:name => "Quarter Finals")
  	end
  end
end
