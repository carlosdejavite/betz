class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
    	t.string	:name
    	t.integer	:admin_tournament_id
    	t.integer	:winner_point
        t.integer :runnerup_point
      	t.integer :team_in_finals_point
		t.timestamps
    end
  end
end
