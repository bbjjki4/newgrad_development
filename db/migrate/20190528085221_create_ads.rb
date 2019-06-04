class CreateAds < ActiveRecord::Migration[5.2]
  def change
    create_table :ads do |t|
      t.integer :advertiser_id #広告主ID
      t.string :image #広告の画像URL
      t.string :price #広告の価格
      t.string :text #広告の説明文

      t.timestamps
    end
  end
end
