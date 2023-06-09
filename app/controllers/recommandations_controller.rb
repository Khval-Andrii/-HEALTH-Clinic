class RecommandationsController < ApplicationController
  before_action :set_appointment_recommandation, only: %i[new create]

  def new
    if @appointment.recommandation.present?
      redirect_to index_doctor_appointments_path, notice: 'Ця Рекомендація вже надавалася!'
    else
      @recommandation = @appointment.build_recommandation
    end
  end

  def create
    @recommandation = @appointment.build_recommandation(recommandation_params)

    if @recommandation.save
      @appointment.update(status: 'closed')
      redirect_to  index_doctor_appointments_path, notice: 'Рекомендація успішно надіслана!'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @recommandation = @appointment.recommandation(params[:id])
    @recommandation.destroy
  end

  private

    def set_appointment_recommandation
      @appointment = Appointment.find_by(id: params[:appointment_id])
    end

    def recommandation_params
      params.require(:recommandation).permit(:appointment_id, :description)
    end
end
