class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :phone, uniqueness: true
  validates :name, presence: true, length: { minimum: 2 }


  has_many :appointments, dependent: :destroy
  has_many :doctors, through: :appointments

  def email_required?
    false
  end

  def will_save_change_to_email?
    false
  end
end
