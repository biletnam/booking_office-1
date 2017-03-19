class CarriagesController < ApplicationController
  before_action :set_carriage, only: [:show, :edit, :update, :destroy]
  before_action :set_type

  def index
    #@carriages = Carriage.all
    @carriages = type_class.all
  end

  def show
  end

  def new
    @carriage = type_class.new
  end

  def edit
  end

  def create
    @carriage = Carriage.new(carriage_params)

    respond_to do |format|
      if @carriage.save
        format.html { redirect_to @carriage, notice: 'Carriage was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @carriage.update(carriage_params)
        format.html { redirect_to @carriage, notice: 'Carriage was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @carriage.destroy
    respond_to do |format|
      format.html { redirect_to carriages_url, notice: 'Carriage was successfully destroyed.' }
    end
  end

  private
    def set_carriage
      @carriage = Carriage.find(params[:id])
    end

    def carriage_params
      params.require(:carriage).permit(:number, :upper_seats, :lower_seats, :type, :train_id, :coupe, :economy, :soft_seats, :luxe)
    end
    
    def set_type
      @type = type
    end
    
    def type
        Carriage.types.include?(params[:type]) ? params[:type] : "Carriage"
    end
    
    def type_class 
      type.constantize 
    end
    
end
