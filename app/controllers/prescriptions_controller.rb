class PrescriptionsController < ApplicationController

  def new
    @patient = Patient.find(params[:patient_id])
    @medications = Medication.all
    @prescription = Prescription.new
  end

  def create
    @patient = Patient.find(params[:patient_id])
    @medication = Medication.find_by(params[:medication_id])
    @prescription = @patient.prescriptions.new(prescription_params)
    if @prescription.save
      flash[:success] =  "Your prescription has been created"
      redirect_to patient_path(@patient)
    else
      render :new
    end
  end

  private

  def prescription_params
    params.require(:prescription).permit(:patient_id, :medication_id, :dosage, :schedule, :starts, :ends)
  end

end
