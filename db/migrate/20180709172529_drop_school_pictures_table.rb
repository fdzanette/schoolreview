class DropSchoolPicturesTable < ActiveRecord::Migration[5.1]
  def up
    drop_table :school_pictures
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
