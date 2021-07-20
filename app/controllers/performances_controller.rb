class PerformancesController < ApplicationController
  def index
    Performance.all
  end

  def show
    @performance = Performance.find(params[:id])
  end
end
