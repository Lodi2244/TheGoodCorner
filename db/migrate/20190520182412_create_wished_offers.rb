class CreateWishedOffers < ActiveRecord::Migration[5.2]
  def change
    create_table :wished_offers do |t|
      t.references :wishlist, foreign_key: true
      t.references :offer, foreign_key: true

      t.timestamps
    end
  end
end
