class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
    	t.string	:name
    	t.string	:abbreviation
    	t.string	:flag_filename
    	t.timestamps
    end
  end
end
