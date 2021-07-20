class Api::V1::PerformancesController < Api::V1::BaseController
  before_action :set_performance, only: [ :show, :edit, :update, :destroy ]

  def index
    @performances = Performance.all
  end

  def show
  end

  def new
    @performance = Performance.new
  end

  def create
    @performance = Performance.new(performance_params)
    if @performance.save
      render :show, status: :created
      # redirect_to performances_path
    else
      render_error
    end
  end

  def edit
  end

  def update
    if @performance.update(performance_params)
      render :show
    else
      render_error
    end
      # redirect_to performance_path(@performance)
  end

  def destroy
    @performance.destroy
    head :no_content
    # redirect_to performances_path
  end

  def purchase
  end

  private

  def set_performance
    @performance = Performance.find(params[:id])
  end

  def performance_params
    params.require(:performance).permit(:name, :venue, :price, :description, :image_url, :date, :user_id)
  end

  def render_error
    render json: { errors: @performance.errors.full_messages },
      status: :unprocessable_entity
  end
end
