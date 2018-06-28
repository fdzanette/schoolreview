class AddPhotoToSchoolPictures < ActiveRecord::Migration[5.1]
  def change
    add_column :school_pictures, :photo, :string
  end
end
