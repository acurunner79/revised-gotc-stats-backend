class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :in_game_name
      t.string :allegiance
      t.integer :keep_level
      t.integer :house_level
      t.integer :power_level
      t.integer :building_power
      t.integer :research_power
      t.integer :troop_power
      t.integer :dragon_talent_power
      t.integer :armory_power

      t.timestamps
    end
  end
end
