class Recommandation < ApplicationRecord
  belongs_to :appointment

  validates :description, length: { minimum: 10 }
end
