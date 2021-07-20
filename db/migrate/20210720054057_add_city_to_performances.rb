class AddCityToPerformances < ActiveRecord::Migration[6.0]
  def change
    add_column :performances, :city, :string
  end
end
