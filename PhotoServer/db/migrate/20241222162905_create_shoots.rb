class CreateShoots < ActiveRecord::Migration[8.0]
  def change
    create_table :shoots, primary_key: "shoot_id" do |t|
      t.string :name
      t.date :date

      t.timestamps
      add_reference :shoots, :users, null: false, foreign_key: true
    end
  end
end
