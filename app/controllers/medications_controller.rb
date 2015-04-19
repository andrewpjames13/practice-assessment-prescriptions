class MedicationsController < ApplicationController

  def show
    @medication = Medication.find_by_id(params[:id])
    @prescriptions = @medication.prescriptions.all
  end

end
