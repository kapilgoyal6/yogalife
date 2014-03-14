class HoroscopesController < ApplicationController

  # http_basic_authenticate_with :name => "myfinance", :password => "credit123"

  before_action :set_horoscope, only: [:show, :edit, :update, :destroy]

  # GET /horoscopes
  # GET /horoscopes.json
  def index
    @horoscopes = Horoscope.all
  end

  # GET /horoscopes/1
  # GET /horoscopes/1.json
  def show
  end

  # GET /horoscopes/new
  def new
    @horoscope = Horoscope.new
  end

  # GET /horoscopes/1/edit
  def edit
  end

  # POST /horoscopes
  # POST /horoscopes.json
  def create
    @horoscope = Horoscope.new(horoscope_params)

    respond_to do |format|
      if @horoscope.save
        format.html { redirect_to @horoscope, notice: 'Horoscope was successfully created.' }
        format.json { render action: 'show', status: :created, location: @horoscope }
      else
        format.html { render action: 'new' }
        format.json { render json: @horoscope.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /horoscopes/1
  # PATCH/PUT /horoscopes/1.json
  def update
    respond_to do |format|
      if @horoscope.update(horoscope_params)
        format.html { redirect_to @horoscope, notice: 'Horoscope was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @horoscope.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /horoscopes/1
  # DELETE /horoscopes/1.json
  def destroy
    @horoscope.destroy
    respond_to do |format|
      format.html { redirect_to horoscopes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_horoscope
      @horoscope = Horoscope.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def horoscope_params
      params.require(:horoscope).permit(:title, :subtitle, :start_date, :end_date, :logo, :background, :desc)
    end
end
