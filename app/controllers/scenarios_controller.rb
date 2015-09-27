class ScenariosController < ApplicationController

  def index
    @scenarios = Scenario.all
  end

  def show
    @scenario = Scenario.find_by_id(params['id'])
  end

  def new
    @scenario = Scenario.new
  end

  def create
    @scenario = Scenario.create()
    if @scenario.save
      redirect_to @scenario
    else
      render "new"
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end

end
