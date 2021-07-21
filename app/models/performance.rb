class Performance < ApplicationRecord
  belongs_to :user
  validates :name, :venue, :price, :description, :date, :city, :highlight, :image_url, presence: true
end
