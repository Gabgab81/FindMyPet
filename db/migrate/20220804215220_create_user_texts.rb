class CreateUserTexts < ActiveRecord::Migration[6.0]
  def change
    create_table :user_texts do |t|
      t.text :content
      t.references :user, null: false, foreign_key: true
      t.references :conversation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
