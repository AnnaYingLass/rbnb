class User < ApplicationRecord
  has_many :tickets
  has_many :performances
  validates_associated :tickets, :performances
end
