class LevelsController < ApplicationController

  def index
    @lvls = Level.all()
  end

  def show
    @lvls = Level.all()
  end

end
