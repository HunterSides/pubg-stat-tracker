class CreateGamesTable < ActiveRecord::Migration[6.0]
  def change
     create_table :games do |t|
      t.text :content
      t.integer :user_id
      t.integer :kill_amount
      t.integer :damage_done
      t.integer :placement
      t.timestamps null: false
    end
  end
end