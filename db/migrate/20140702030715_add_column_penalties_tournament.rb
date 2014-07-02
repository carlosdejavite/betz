class AddColumnPenaltiesTournament < ActiveRecord::Migration
  def change
  	add_column	:matches, :team_won_penalties_id, :integer
  end
end
