class CmsController < ApplicationController
  before_action :set_cm, only: [:show, :edit, :update, :destroy]

  # GET /cms
  # GET /cms.json
  def index
    @cms = Cm.all
  end

  # GET /cms/1
  # GET /cms/1.json
  def show
  end

  # GET /cms/new
  def new
    @cm = Cm.new
  end

  # GET /cms/1/edit
  def edit
  end

  # POST /cms
  # POST /cms.json
  def create
    @cm = Cm.new(cm_params)

    respond_to do |format|
      if @cm.save
        format.html { redirect_to @cm, notice: 'Cm was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cm }
      else
        format.html { render action: 'new' }
        format.json { render json: @cm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cms/1
  # PATCH/PUT /cms/1.json
  def update
    respond_to do |format|
      if @cm.update(cm_params)
        format.html { redirect_to @cm, notice: 'Cm was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cms/1
  # DELETE /cms/1.json
  def destroy
    @cm.destroy
    respond_to do |format|
      format.html { redirect_to cms_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cm
      @cm = Cm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cm_params
      params.require(:cm).permit(:page_title, :meta_keywords, :meta_desc, :page_content)
    end
end
