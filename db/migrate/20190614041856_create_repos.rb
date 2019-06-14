class CreateRepos < ActiveRecord::Migration[5.2]
  def change
    create_table :repos do |t|
      t.integer :click, null: false, default: 0
      t.integer :imp, null: false, default: 0
      t.integer :cv, null: false, default: 0
      t.integer :ad_id,null: false
      t.integer :totalcost, null: false, default: 0
      t.integer :adspot_id, null: false


      t.timestamps
    end
  end
end
