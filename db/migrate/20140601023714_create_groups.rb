class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
    	t.string	:name
    	t.integer	:tournament_id
    	t.integer	:point
    	t.integer	:bonus
		t.timestamps
    end
  end
end
