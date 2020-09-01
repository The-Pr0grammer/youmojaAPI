class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.integer :business_id
      t.integer :user_id
      t.string :content
      t.integer :score
      t.timestamps
    end
  end
end
