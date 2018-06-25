class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
      t.string :url
      t.references :school, foreign_key: true

      t.timestamps
    end
  end
end
