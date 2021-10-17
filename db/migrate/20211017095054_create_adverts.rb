class CreateAdverts < ActiveRecord::Migration[6.0]
  def change
    create_table :adverts do |t|
      t.string :type_ad
      t.string :title
      t.string :address
      t.text :content
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
