class CreateQuotes < ActiveRecord::Migration[6.0]
  def change
    create_table :quotes do |t|
      t.integer :business_id
      t.integer :user_id
      t.string :content
      t.timestamps
    end
  end
end
