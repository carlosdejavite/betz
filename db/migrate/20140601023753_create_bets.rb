class CreateBets < ActiveRecord::Migration
  def change
    create_table :bets do |t|
    	t.integer	:match_id
    	t.integer	:betting_pool_id
    	t.integer	:score_a
    	t.integer	:score_b
      	t.timestamps
    end
  end
end
