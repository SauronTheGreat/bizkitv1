class FacilitatorInstitute < ActiveRecord::Base
  belongs_to :facilitator
  belongs_to :institute

  def self.create_entry(fac_id,inst_id)
    @facilitator_institute=FacilitatorInstitute.new
    @facilitator_institute.facilitator_id=fac_id
    @facilitator_institute.institute_id=inst_id
    @facilitator_institute.save!
  end
end
