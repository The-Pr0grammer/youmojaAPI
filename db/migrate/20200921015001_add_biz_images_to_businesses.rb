class AddBizImagesToBusinesses < ActiveRecord::Migration[6.0]
  def change
    add_column :businesses, :biz_images, :json
  end
end
