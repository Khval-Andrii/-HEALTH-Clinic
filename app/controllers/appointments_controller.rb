class AppointmentsController < ApplicationController
  before_action :set_appointment, only: %i[show edit update destroy]
  def index
    @appointment_to_doctor = Appointment.where('doctor_id = ?', params[:doctor_id])
    @appointment_of_user = Appointment.where('user_id = ?', params[:user_id])
  end

  def show; end

  def new
    @appointment = Appointment.new
  end

  def edit; end

  def create
    @appointment = Appointment.new(appointment_params)

    if @appointment.save
      redirect_to @appointment
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
  end

  def destroy
  end

  private

    def set_appointment
      @appointment = Appointment.find(params[:id])
    end

    def appointment_params
      params.require(:appointment).permit(:description, :status, :doctor_id, :user_id)
    end
end
