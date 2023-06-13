class AppointmentsController < ApplicationController
  before_action :set_appointment, only: %i[show edit update destroy]
  before_action :authenticate_user!, only: %i[new create index_user]
  before_action :authenticate_doctor!, only: %i[index_doctor]

  def index_doctor
    @has_appointment = Appointment.exists?(doctor_id: current_doctor.id)
    @appointments = current_doctor.appointments
    authorize! :read, Appointment
  end

  def index_user
    @appointments = current_user.appointments
    authorize! :read, Recommandation
  end

  def show; end

  def new
    @max_appointment = 10
    @count_appointments = Appointment.where(doctor_id: params[:doctor_id], status: 'open').count
    @doctor = Doctor.find_by(id: params[:doctor_id])
    @appointment = Appointment.new
  end

  def edit; end

  def create
    @appointment = Appointment.new(appointment_params)

    if @appointment.save
      redirect_to categories_path, notice: "Запис успішно створено!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update; end

  def destroy; end

  private

    def set_appointment
      @appointment = Appointment.find(params[:id])
    end

    def appointment_params
      params.require(:appointment).permit(:description, :status, :doctor_id, :user_id)
    end
end
