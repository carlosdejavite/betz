class ResultsFunctionalityDbAdjustments < ActiveRecord::Migration
  def change
  	rename_column :matches, :score_team_a, :score_a
  	rename_column :matches, :score_team_b, :score_b
  	add_column	:tournaments, :winner_id, :integer
  	add_column	:tournaments, :runnerup_id, :integer
  	add_column	:bets, :points_won_in_bet, :integer
  	add_column	:betting_pools, :points_won_in_bet, :integer

  	# Update of group points
	
	groupA = Group.find_by(:name => "Group A")
	groupA.point = 100
	groupA.bonus = 25
	groupA.save(:validate => false)

	groupB = Group.find_by(:name => "Group B")
	groupB.point = 100
	groupB.bonus = 25
	groupB.save(:validate => false)

	groupC = Group.find_by(:name => "Group C")
	groupC.point = 100
	groupC.bonus = 25
	groupC.save(:validate => false)

	groupD = Group.find_by(:name => "Group D")
	groupD.point = 100
	groupD.bonus = 25
	groupD.save(:validate => false)

	groupE = Group.find_by(:name => "Group E")
	groupE.point = 100
	groupE.bonus = 25
	groupE.save(:validate => false)

	groupF = Group.find_by(:name => "Group F")
	groupF.point = 100
	groupF.bonus = 25
	groupF.save(:validate => false)

	groupG = Group.find_by(:name => "Group G")
	groupG.point = 100
	groupG.bonus = 25
	groupG.save(:validate => false)

	groupH = Group.find_by(:name => "Group H")
	groupH.point = 100
	groupH.bonus = 25
	groupH.save(:validate => false)

	worldCup = Tournament.find_by(:name => "2014 FIFA World Cup Brazil")
	worldCup.winner_point = 1250
	worldCup.runnerup_point = 750
	worldCup.team_in_finals_point = 500
	worldCup.save(:validate => false)
  end
end
