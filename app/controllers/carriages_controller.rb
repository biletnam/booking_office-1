class CarriagesController < ApplicationController
  before_action :set_carriage, only: [:show, :edit, :update, :destroy]
  before_action :set_type 
  before_action :set_train, only: [:new, :create]

  def index
    @carriages = type_class.all
  end

  def show
    @carriage = Carriage.find(params[:id])
  end

  def new
    @carriage = type_class.new
  end

  def edit
  end

  def create
    @carriage = @train.carriages.new(carriage_params)

    respond_to do |format|
      if @carriage.save
        format.html { redirect_to @train, notice: "Carriage was successfully created." }
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
  
  def set_train
    @train = Train.find(params[:train_id])
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
  
  def set_carriage
    @carriage = type_class.find(params[:id])
  end

  def carriage_params
    params.require(type.underscore.to_sym).permit(:number, :upper_seats, :lower_seats, :side_upper_seats, :side_lower_seats, :soft_seats, :type, :train_id)
  end
end
