class PatientsController < ApplicationController

  def show
    @patient = Patient.find_by_id(params[:id])
    @prescriptions = Prescription.all
  end

end
