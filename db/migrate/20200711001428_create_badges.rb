class CreateBadges < ActiveRecord::Migration[6.0]
  def change
    create_table :badges do |t|
      t.string :name
      t.integer :user_id
      t.integer :business_id
      t.integer :price

      t.timestamps
    end
  end
end
