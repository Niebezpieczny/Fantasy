class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
    	t.string :name
    	t.text :origin_team
    	t.text :position
    	t.float :price
      t.timestamps
    end
  end
end
