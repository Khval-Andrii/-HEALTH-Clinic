class Doctor < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :phone, format: { with: /\A\+380\d{2}\d{3}\d{2}\d{2}\z/, message: "only allows phone number" }
  validates :category_id, presence: true
  #validates :avatar, presence: true
  validates :name, presence: true, length: { minimum: 2 }

  belongs_to :category
  has_many :appointments, dependent: :destroy
  has_many :users, through: :appointments
  has_one_attached :avatar

  def email_required?
    false
  end

  def will_save_change_to_email?
    false
  end
end
