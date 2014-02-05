class WheretobuysController < ApplicationController
  before_action :set_wheretobuy, only: [:show, :edit, :update, :destroy]

  # GET /wheretobuys
  # GET /wheretobuys.json
  def index
    @wheretobuys = Wheretobuy.all
  end

  # GET /wheretobuys/1
  # GET /wheretobuys/1.json
  def show
  end

  # GET /wheretobuys/new
  def new
    @wheretobuy = Wheretobuy.new
  end

  # GET /wheretobuys/1/edit
  def edit
  end

  # POST /wheretobuys
  # POST /wheretobuys.json
  def create
    @wheretobuy = Wheretobuy.new(wheretobuy_params)

    respond_to do |format|
      if @wheretobuy.save
        format.html { redirect_to @wheretobuy, notice: 'Wheretobuy was successfully created.' }
        format.json { render action: 'show', status: :created, location: @wheretobuy }
      else
        format.html { render action: 'new' }
        format.json { render json: @wheretobuy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wheretobuys/1
  # PATCH/PUT /wheretobuys/1.json
  def update
    respond_to do |format|
      if @wheretobuy.update(wheretobuy_params)
        format.html { redirect_to @wheretobuy, notice: 'Wheretobuy was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @wheretobuy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wheretobuys/1
  # DELETE /wheretobuys/1.json
  def destroy
    @wheretobuy.destroy
    respond_to do |format|
      format.html { redirect_to wheretobuys_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wheretobuy
      @wheretobuy = Wheretobuy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wheretobuy_params
      params.require(:wheretobuy).permit(:address, :country, :city, :w_days, :w_hours, :phone_no, :fax_no, :email_id)
    end
end
