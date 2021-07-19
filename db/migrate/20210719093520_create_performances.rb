class CreatePerformances < ActiveRecord::Migration[6.0]
  def change
    create_table :performances do |t|
      t.string :name
      t.string :venue
      t.string :price
      t.string :description
      t.string :image_url
      t.string :date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
