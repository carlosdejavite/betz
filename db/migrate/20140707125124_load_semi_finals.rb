class LoadSemiFinals < ActiveRecord::Migration
  def change
	down
  	
  	worldCup = Tournament.find_by(:name => "2014 FIFA World Cup Brazil")

    semiFinals = Group.new(:name => "Semi Finals",  :point => 200, :bonus => 50)
	semiFinals.tournament = worldCup
	semiFinals.is_rankable = false
	semiFinals.save(:validate => false)

	brazil = Team.find_by(:name => "Brazil")
	germany = Team.find_by(:name => "Germany")
	matchBRAvsGER = Match.new(:date_time => "2014-07-08 17:00:00 UTC-03:00")
	matchBRAvsGER.group = semiFinals
	matchBRAvsGER.team_a = brazil
	matchBRAvsGER.team_b = germany
	matchBRAvsGER.save(:validate => false)
	
	netherlands = Team.find_by(:name => "Netherlands")
	argentina = Team.find_by(:name => "Argentina")
	matchNETvsARG = Match.new(:date_time => "2014-07-09 17:00:00 UTC-03:00")
	matchNETvsARG.group = semiFinals
	matchNETvsARG.team_a = netherlands
	matchNETvsARG.team_b = argentina
	matchNETvsARG.save(:validate => false)

  end

  def down
  	semiFinals = Group.find_by(:name => "Semi Finals")
  	if semiFinals != nil then
  		Match.destroy_all(:group => semiFinals)
  		Group.destroy_all(:name => "Semi Finals")
  	end
  end
end
