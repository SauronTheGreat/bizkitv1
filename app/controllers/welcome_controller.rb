class WelcomeController < ApplicationController



  def index
    if current_user
    @facilitator=Facilitator.find_by_user_id(current_user.id)
      end

  end

end
