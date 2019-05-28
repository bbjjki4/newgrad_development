class CreateAds < ActiveRecord::Migration[5.2]
  def change
    create_table :ads do |t|
      t.integer :advertiser_id
      t.string :image
      t.string :price
      t.string :text

      t.timestamps
    end
  end
end
