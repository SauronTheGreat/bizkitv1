class Institute < ActiveRecord::Base
  has_many :facilitator_institutes
  has_many :facilitators,:through => :facilitator_institutes
  has_many :student_groups,:dependent => :destroy
end
