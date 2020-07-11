class CreateBizBadges < ActiveRecord::Migration[6.0]
  def change
    create_table :biz_badges do |t|
      t.integer :user_id
      t.integer :business_id
      t.timestamps
    end
  end
end
