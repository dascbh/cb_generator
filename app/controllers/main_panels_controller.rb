class MainPanelsController < ApplicationController
  before_action :set_main_panel, only: [:show, :edit, :update, :destroy]

  # GET /main_panels
  # GET /main_panels.json
  def index
    @main_panels = MainPanel.all
  end

  # GET /main_panels/1
  # GET /main_panels/1.json
  def show
  end

  # GET /main_panels/new
  def new
    @main_panel = MainPanel.new
  end

  # GET /main_panels/1/edit
  def edit
  end

  # POST /main_panels
  # POST /main_panels.json
  def create
    @main_panel = MainPanel.new(main_panel_params)

    respond_to do |format|
      if @main_panel.save
        format.html { redirect_to @main_panel, notice: 'Main panel was successfully created.' }
        format.json { render action: 'show', status: :created, location: @main_panel }
      else
        format.html { render action: 'new' }
        format.json { render json: @main_panel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /main_panels/1
  # PATCH/PUT /main_panels/1.json
  def update
    respond_to do |format|
      if @main_panel.update(main_panel_params)
        format.html { redirect_to @main_panel, notice: 'Main panel was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @main_panel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /main_panels/1
  # DELETE /main_panels/1.json
  def destroy
    @main_panel.destroy
    respond_to do |format|
      format.html { redirect_to main_panels_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_main_panel
      @main_panel = MainPanel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def main_panel_params
      params[:main_panel]
    end
end
