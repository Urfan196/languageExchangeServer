class AppointmentsController < ApplicationController
  def index
    appointments = Appointment.all 
    render json: appointments
  end

  def show
    appointment = Appointment.find(params[:id]) 
    render json: appointment
  end

  def create
    appointment = Appointment.new(appointment_params)
    if appointment.save
      render json: appointment
    else
      render json: {error: "Something went wrong"}
    end
  end

  def update
    appointment = Appointment.find(params[:id])
    if appointment.update
      render json: appointment
    else
      render json: {error: "Something went wrong"}
    end
  end

  def destroy
    appointment = Appointment.find(params[:id])
    if appointment.destroy
      render json: {message: "Successfully deleted appointment"}
    else
      render json: {error: "Something went wrong"}
    end
  end

  private

  def appointment_params
    params.require(:appointment).permit(:date, :language_id, :student_id, :teacher_id)
  end
end

