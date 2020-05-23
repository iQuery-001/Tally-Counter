class CreateTallies < ActiveRecord::Migration[6.0]
  def change
    create_table :tallies do |t|
      t.integer :creator
      t.integer :target
      t.string :content
    end
  end
end
