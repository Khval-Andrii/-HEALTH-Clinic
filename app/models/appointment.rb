class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :doctor
  has_one :recommandation

  VALID_STATUSES = %w[open closed]

  validates :description, presence: true
  validates :status, inclusion: { in: VALID_STATUSES }
end
