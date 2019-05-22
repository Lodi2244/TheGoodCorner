class CreateAdvancedSearches < ActiveRecord::Migration[5.2]
  def change
    create_table :advanced_searches do |t|
      t.integer :category_id
      t.float :min_price
      t.float :max_price
      t.datetime :published_on

      t.timestamps
    end
  end
end
