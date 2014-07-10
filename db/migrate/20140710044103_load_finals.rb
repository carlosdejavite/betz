class LoadFinals < ActiveRecord::Migration
  def change
	down
  	
  	worldCup = Tournament.find_by(:name => "2014 FIFA World Cup Brazil")

    finals = Group.new(:name => "Finals",  :point => 200, :bonus => 50)
	finals.tournament = worldCup
	finals.is_rankable = false
	finals.save(:validate => false)

	brazil = Team.find_by(:name => "Brazil")
	netherlands = Team.find_by(:name => "Netherlands")
	matchBRAvsNET = Match.new(:date_time => "2014-07-12 17:00:00 UTC-03:00")
	matchBRAvsNET.group = finals
	matchBRAvsNET.team_a = brazil
	matchBRAvsNET.team_b = netherlands
	matchBRAvsNET.save(:validate => false)
	
	germany = Team.find_by(:name => "Germany")
	argentina = Team.find_by(:name => "Argentina")
	matchNETvsARG = Match.new(:date_time => "2014-07-13 16:00:00 UTC-03:00")
	matchNETvsARG.group = finals
	matchNETvsARG.team_a = germany
	matchNETvsARG.team_b = argentina
	matchNETvsARG.save(:validate => false)

  end

  def down
  	finals = Group.find_by(:name => "Finals")
  	if finals != nil then
  		Match.destroy_all(:group => finals)
  		Group.destroy_all(:name => "Finals")
  	end
  end
end
