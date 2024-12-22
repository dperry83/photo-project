class CreatePhotos < ActiveRecord::Migration[8.0]
  def change
    create_table :photos, primary_key: "photo_id" do |t|
      t.string :file_name

      t.timestamps
      add_reference :photos, :shoots, null: false, foreign_key: true
    end
  end
end
