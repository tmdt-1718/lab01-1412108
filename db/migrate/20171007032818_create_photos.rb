class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
      t.string :album
      t.string :uploader
      t.string :title
      t.text :description
      t.integer :view

      t.timestamps
    end
  end
end
