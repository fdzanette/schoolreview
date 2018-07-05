class ChangeRatingAverageToBeDecimalInSchools < ActiveRecord::Migration[5.1]
  def change
    change_column :schools, :rating_average, :decimal
  end
end
