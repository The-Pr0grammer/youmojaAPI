class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :website
      t.string :password
      t.array :likes
      t.timestamps
    end
  end
end
