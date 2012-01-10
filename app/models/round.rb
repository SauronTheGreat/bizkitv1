class Round < ActiveRecord::Base
  belongs_to :simulation

  def self.create_rounds(simulation_id)
    @simulation=Simulation.find(simulation_id)
    @simulation.max_rounds.times do |i|
      @round=Round.new
      @round.number=i+1
      @round.simulation_id=@simulation.id
      @round.save!
    end

  end
end
