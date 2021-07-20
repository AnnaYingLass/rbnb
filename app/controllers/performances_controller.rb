class PerformancesController < ApplicationController
  before_action :set_performance, only: [ :show, :edit, :update, :destroy ]

  def show
  end

  def new
    @performance = Performance.new
  end

  def create
    @performance = Performance.new(performance_params)
    if @performance.save
      redirect_to performances_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @performance.update(performance_params)
    redirect_to performance_path(@performance)
  end

  def destroy
    @performance.destroy
    redirect_to performances_path
  end

  def purchase
  end

  private

  def set_performance
    @performance = Performance.find(params[:id])
  end

  def performance_params
    params.require(:performance).permit(:name, :venue, :price, :description, :image_url, :date)
  end
end
