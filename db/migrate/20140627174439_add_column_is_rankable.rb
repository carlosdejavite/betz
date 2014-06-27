class AddColumnIsRankable < ActiveRecord::Migration
  def change
  	add_column	:groups, :is_rankable, :boolean

  	#Change groups
  	groupA = Group.find_by(:name => "Group A")
	groupA.is_rankable = true
	groupA.save(:validate => false)

	groupB = Group.find_by(:name => "Group B")
	groupB.is_rankable = true
	groupB.save(:validate => false)

	groupC = Group.find_by(:name => "Group C")
	groupC.is_rankable = true
	groupC.save(:validate => false)

	groupD = Group.find_by(:name => "Group D")
	groupD.is_rankable = true
	groupD.save(:validate => false)

	groupE = Group.find_by(:name => "Group E")
	groupE.is_rankable = true
	groupE.save(:validate => false)

	groupF = Group.find_by(:name => "Group F")
	groupF.is_rankable = true
	groupF.save(:validate => false)

	groupG = Group.find_by(:name => "Group G")
	groupG.is_rankable = true
	groupG.save(:validate => false)

	groupH = Group.find_by(:name => "Group H")
	groupH.is_rankable = true
	groupH.save(:validate => false)

	round16 = Group.find_by(:name => "Round of 16")
	round16.is_rankable = false
	round16.save(:validate => false)
  end
end
