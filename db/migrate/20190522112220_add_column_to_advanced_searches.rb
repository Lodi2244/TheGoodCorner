class AddColumnToAdvancedSearches < ActiveRecord::Migration[5.2]
  def change
    add_column :advanced_searches, :category, :string
  end
end
