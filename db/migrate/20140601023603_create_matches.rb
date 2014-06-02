class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
    	t.datetime 	:date_time
    	t.integer	:group_id
    	t.integer 	:team_a_id
    	t.integer 	:score_team_a
    	t.integer 	:team_b_id
    	t.integer	:score_team_b
    	t.timestamps
    end
  end
end
