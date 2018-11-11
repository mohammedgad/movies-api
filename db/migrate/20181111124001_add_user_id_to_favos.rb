class AddUserIdToFavos < ActiveRecord::Migration[5.2]
  def change
    add_reference :favos, :user, foreign_key: true
  end
end
