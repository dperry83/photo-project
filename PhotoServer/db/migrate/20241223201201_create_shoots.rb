class CreateShoots < ActiveRecord::Migration[8.0]
  def change
    create_table :shoots do |t|
      t.string :shoot_name
      t.date :shoot_date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
