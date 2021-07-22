class Api::V1::PerformancesController < Api::V1::BaseController
  before_action :set_performance, only: [ :show, :edit, :update, :destroy, :purchase ]

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
  end

  def destroy
    @performance.destroy
    head :no_content
  end

  def purchase
    redirect_to performances_path
  end

  private

  def set_performance
    @performance = Performance.find(params[:id])
  end

  def performance_params
    params.require(:performance).permit(:name, :venue, :price, :description, :image_url, :date, :user_id, :city, :highlight)
  end

  def render_error
    render json: { errors: @performance.errors.full_messages },
      status: :unprocessable_entity
  end
end
