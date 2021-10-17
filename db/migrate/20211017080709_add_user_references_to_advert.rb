class AddUserReferencesToAdvert < ActiveRecord::Migration[6.0]
  def change
    add_reference :adverts, :users, foreign_key: true
  end
end
