class RecommandationsController < ApplicationController
  before_action :set_appointment_recommandation
  # def index
  # end

  # def show
  # end

  # def new
  # end

  # def edit
  # end

  def create
    @recommandation = @appointment.recommandations.create(recommandation_params)

    redirect_to root_path
  end

  # def update
  # end

  def destroy
    @recommandation = @appointment.recommandations(params[:id])
    @recommandation.destroy
  end

  private

    def set_appointment_recommandation
      @appointment = Appointment.find(params[:appointment_id])
    end

    def recommandation_params
      params.require(:recommandation).permit(:appointment_id, :description)
    end
end
