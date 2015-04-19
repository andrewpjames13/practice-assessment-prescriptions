class Prescription < ActiveRecord::Base
  validates :dosage, :schedule, :starts, :ends, presence: true
  belongs_to :medication
  belongs_to :patient
end
