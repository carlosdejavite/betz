class CreateBettingPools < ActiveRecord::Migration
  def change
    create_table :betting_pools do |t|
    	t.integer	:winner_id
    	t.integer	:runnerup_id
    	t.integer	:user_id
    	t.integer	:tournament_id
    	t.float		:bet_amount
      t.timestamps
    end
  end
end
