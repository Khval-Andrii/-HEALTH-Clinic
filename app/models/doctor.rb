class Doctor < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :phone, uniqueness: true
  validates :category_id, presence: true
  validates :name, presence: true

  belongs_to :category
  has_many :appointment, dependent: :destroy
  has_many :users, through: :appointment

  def email_required?
    false
  end

  def will_save_change_to_email?
    false
  end
end
