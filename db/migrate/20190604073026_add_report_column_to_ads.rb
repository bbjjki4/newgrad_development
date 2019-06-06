# frozen_string_literal: true
class AddReportColumnToAds < ActiveRecord::Migration[5.2]
  def change
    add_column :ads, :click, :integer
    add_column :ads, :imp, :integer
    add_column :ads, :cv, :integer
  end
end
