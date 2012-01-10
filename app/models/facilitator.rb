class Facilitator < ActiveRecord::Base
  has_many :facilitator_institutes
  has_many :institutes,:through => :facilitator_institutes
end
