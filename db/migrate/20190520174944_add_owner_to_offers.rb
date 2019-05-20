class AddOwnerToOffers < ActiveRecord::Migration[5.2]
  def up
    add_reference :offers, :owner, foreign_key: { to_table: :users }
  end

  def down
    remove_reference :offers, :owner, foreign_key: { to_table: :users }
  end
end
