class PropertiesController < ApplicationController
  before_action :set_property, only: [:show, :edit, :update, :destroy]

  # GET /properties
  def index
    @properties = Property.all
  end

  # GET /properties/1
  def show
    @station = Station.all
  end

  # GET /properties/new
  def new
    @property = Property.new
    2.times { @property.stations.build }
  end

  # GET /properties/1/edit
  def edit
  end

  # POST /properties
  def create
    @property = Property.new(property_params)
   
    if @property.save
      redirect_to @property, notice: 'Property was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /properties/1
  def update
    if @property.update(property_params)
      redirect_to @property, notice: 'Property was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /properties/1
  def destroy
    @property.destroy
    redirect_to properties_url, notice: 'Property was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property
      @property = Property.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def property_params
     params.require(:property).permit(:property, :rent, :adress, :building_age, :remarks, stations_attributes: [:id, :name_of_railway_line, :statation_name, :how_many_minutes_walks])
      # params.require(:property).permit(:property, :rent, :adress, :building_age, :remarks, stations_attributes:  Station.attributes_names.map(&:to_sym).push(:_destroy))

    end
end
