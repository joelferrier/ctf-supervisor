class ChallengesController < ApplicationController

  def show
    @challenge = Challenge.find_by_id(params['id'])
  end

end
