class Recommandation < ApplicationRecord
  belongs_to :appointment

  validates :description, presence: true
end
