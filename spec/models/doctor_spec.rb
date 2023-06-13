require 'rails_helper'

RSpec.describe Doctor, type: :model do

  describe 'phone' do
    context 'when phone number valid' do
      it 'should be valid' do
        doctor = FactoryBot.create(:doctor, phone: '+380671234567')
        expect(doctor).to be_valid
      end
    end

    context 'when phone number not valid' do
      it 'should be not valid' do
        doctor = FactoryBot.build(:doctor, phone: '+190671234567')
        expect(doctor).not_to be_valid
        expect(doctor.errors[:phone]).to include('only allows phone number')
      end
    end

    context 'when phone number not valid' do
      it 'should be too short number' do
        doctor = FactoryBot.build(:doctor, phone: '+3806712')
        expect(doctor).not_to be_valid
        expect(doctor.errors[:phone]).to include('only allows phone number')
      end
    end
  end
end
