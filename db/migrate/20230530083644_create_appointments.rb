class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.text :description
      t.string :status, default: 'open'

      t.timestamps
    end
  end
end
