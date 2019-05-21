class AddUserIndexToOffers < ActiveRecord::Migration[5.2]
  def up
    add_reference :offers, :user, foreign_key: :user_id
  end

  def down
    remove_reference :offers, :user, foreign_key: :user_id
  end
end
