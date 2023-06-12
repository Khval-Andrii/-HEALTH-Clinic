require 'rails_helper'

RSpec.describe Doctor, type: :model do

  def create_doctor(name, phone, category_id)
    doctor = Doctor.new(name: name, phone: phone, category_id: category_id)
    doctor
  end

  before(:each) do
    @regexp = /\A\+380\d{2}\d{3}\d{2}\d{2}\z/
  end

  it 'should to check valid phone number?' do
    doctor = create_doctor('Name', '+380671234567', 5)
    expect(doctor.phone).to match(@regexp)
  end

  it 'should to check not valid phone number?' do
    doctor = create_doctor('Name', '+280671234567', 5)
    expect(doctor.phone).not_to match(@regexp)
  end

  it 'should to check not valid phone number?' do
    doctor = create_doctor('Name', '+38067123456', 5)
    expect(doctor.phone).not_to match(@regexp)
  end
end
