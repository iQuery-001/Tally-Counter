class CreateTallies < ActiveRecord::Migration[6.0]
  def change
    create_table :tallies do |t|
      t.integer :user_id
      t.timestamps
      t.string :content
    end
  end
end
