class CreateBadges < ActiveRecord::Migration[6.0]
  def change
    create_table :badges do |t|
      t.string :color
      t.integer :user_id
      t.integer :business_id
      t.decimal :price
      t.string :receipt
      
      t.timestamps
    end
  end
end
