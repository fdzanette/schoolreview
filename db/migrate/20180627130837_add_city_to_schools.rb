class AddCityToSchools < ActiveRecord::Migration[5.1]
  def change
    add_column :schools, :city, :string
  end
end
