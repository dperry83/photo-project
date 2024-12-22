class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users, primary_key: "user_id" do |t|
      t.string :email
      t.string :password
      t.string :name

      t.timestamps
    end
  end
end
