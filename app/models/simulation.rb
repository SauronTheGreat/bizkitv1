class Simulation < ActiveRecord::Base

  has_many :rounds, :dependent => :destroy

  after_create :create_rounds
  def create_rounds

    Round.create_rounds(self.id)
  end
end
