class AddAppointmentToRecommandations < ActiveRecord::Migration[7.0]
  def change
    add_reference :recommandations, :appointment, null: false, foreign_key: true
  end
end
