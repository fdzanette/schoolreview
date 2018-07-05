class AddRatingAverageToSchool < ActiveRecord::Migration[5.1]
  def change
    add_column :schools, :rating_average, :integer
  end
end
