class AddColumnPenatiels < ActiveRecord::Migration
  def change
  	add_column	:bets, :team_won_penalties_id, :integer
  end
end
