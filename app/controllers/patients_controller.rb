class PatientsController < ApplicationController

  def show
    @patients = Patient.find_by(params[:patient_id])
    @patient = Patient.find_by_id(params[:id])
    @prescriptions = @patient.prescriptions.all
  end

end
