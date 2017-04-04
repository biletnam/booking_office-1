class Admin::RoutesController < Admin::BaseController
  before_action :set_route, only: [:show, :edit, :update, :destroy]
  def index
    @routes = Route.all
  end

  def show
  end

  def new
    @route = Route.new
  end

  def create
    @route = Route.new(route_params)

    respond_to do |format|
      if @route.save
        format.html { redirect_to [:admin, @route], notice: 'Route was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @route.update(route_params)
        format.html { redirect_to [:admin, @route], notice: 'Route was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @route.destroy
    respond_to do |format|
      format.html { redirect_to admin_routes_path, notice: 'Route was successfully destroyed.' }
    end
  end

  private

  def set_route
    @route = Route.find(params[:id])   
  end

  def route_params
    params.require(:route).permit(:name, railway_station_ids: [])
  end
end