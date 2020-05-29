class CreateTallies < ActiveRecord::Migration[6.0]
  def change
    create_table :tallies do |t|
      t.integer :user_id
      # t.integer :creator_id
      # t.integer :target_id
      t.string :content
      t.timestamps
      
    end
  end
end
