class Category < ApplicationRecord
  has_many :doctors

  validates :name, uniqueness: true, length: { minimum: 2 }
end
