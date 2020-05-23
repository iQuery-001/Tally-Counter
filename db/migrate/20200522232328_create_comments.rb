class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.integer :user
      t.string :content
      t.integer :tally
    end
  end
end
