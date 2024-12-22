class CreateComments < ActiveRecord::Migration[8.0]
  def change
    create_table :comments do |t|
      t.timestamp :date
      t.string :text

      t.timestamps
      add_reference :comments, :photos, null: false, foreign_key: true
      add_reference :comments, :shoots, null: false, foreign_key: true
      add_reference :comments, :users, null:false, foreign_key: true
    end
  end
end
