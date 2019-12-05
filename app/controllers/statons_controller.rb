class StatonsController < ApplicationController
  before_action :set_staton, only: [:show, :edit, :update, :destroy]

  # GET /statons
  def index
    @statons = Staton.all
  end

  # GET /statons/1
  def show
  end

  # GET /statons/new
  def new
    @staton = Staton.new
  end

  # GET /statons/1/edit
  def edit
  end

  # POST /statons
  def create
    @staton = Staton.new(staton_params)

    if @staton.save
      redirect_to @staton, notice: 'Staton was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /statons/1
  def update
    if @staton.update(staton_params)
      redirect_to @staton, notice: 'Staton was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /statons/1
  def destroy
    @staton.destroy
    redirect_to statons_url, notice: 'Staton was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_staton
      @staton = Staton.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def staton_params
      params.require(:staton).permit(:name_of_railway_line, :statation_name, :how_many_minutes_walks, :my_property_id)
    end
end
