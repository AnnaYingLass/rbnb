class AddHighlightToPerformances < ActiveRecord::Migration[6.0]
  def change
    add_column :performances, :highlight, :string
  end
end
