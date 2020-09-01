class CreateUserHearts < ActiveRecord::Migration[6.0]
  def change
    create_table :user_hearts do |t|
      t.integer :user_id
      t.integer :business_id
      t.timestamps
    end
  end
end
