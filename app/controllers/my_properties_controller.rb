class MyPropertiesController < ApplicationController
  before_action :set_my_property, only: [:show, :edit, :update, :destroy]

  # GET /my_properties
  def index
    @my_properties = MyProperty.all
  end

  # GET /my_properties/1
  def show
  end

  # GET /my_properties/new
  def new
    @my_property = MyProperty.new
    2.times { @my_property.statons.build }
  end

  # GET /my_properties/1/edit
  def edit
  end

  # POST /my_properties
  def create
    @my_property = MyProperty.new(my_property_params)

    if @my_property.save
      redirect_to @my_property, notice: 'My property was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /my_properties/1
  def update
    if @my_property.update(my_property_params)
      redirect_to @my_property, notice: 'My property was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /my_properties/1
  def destroy
    @my_property.destroy
    redirect_to my_properties_url, notice: 'My property was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_property
      @my_property = MyProperty.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def my_property_params
      params.require(:my_property).permit(:property, :rent, :adress, :building_age, :remarks, statons_attributes: [:id, :name_of_railway_line, :statation_name, :how_many_minutes_walks])
    end
end
