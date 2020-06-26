class CreateBusinesses < ActiveRecord::Migration[6.0]
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :city
      t.string :state
      t.string :industry
      t.string :summary
      t.string :tags
      t.string :website
      t.string :twitter
      t.string :facebook
      t.string :phone
      t.string :email
      t.string :password
      t.timestamps
    end
  end
end
