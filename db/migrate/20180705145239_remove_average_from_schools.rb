class RemoveAverageFromSchools < ActiveRecord::Migration[5.1]
  def change
    remove_column :schools, :average, :integer
  end
end
