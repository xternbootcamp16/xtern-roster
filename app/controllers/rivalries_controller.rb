class RivalriesController < ApplicationController
  before_action :set_rivalry, only: [:show, :edit, :update, :destroy]

  # GET /rivalries
  # GET /rivalries.json
  def index
    @rivalries = Rivalry.all
  end

  # GET /rivalries/1
  # GET /rivalries/1.json
  def show
  end

  # GET /rivalries/new
  def new
    @rivalry = Rivalry.new
  end

  # GET /rivalries/1/edit
  def edit
  end

  # POST /rivalries
  # POST /rivalries.json
  def create
    @rivalry = Rivalry.new(rivalry_params)

    respond_to do |format|
      if @rivalry.save
        format.html { redirect_to @rivalry, notice: 'Rivalry was successfully created.' }
        format.json { render :show, status: :created, location: @rivalry }
      else
        format.html { render :new }
        format.json { render json: @rivalry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rivalries/1
  # PATCH/PUT /rivalries/1.json
  def update
    respond_to do |format|
      if @rivalry.update(rivalry_params)
        format.html { redirect_to @rivalry, notice: 'Rivalry was successfully updated.' }
        format.json { render :show, status: :ok, location: @rivalry }
      else
        format.html { render :edit }
        format.json { render json: @rivalry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rivalries/1
  # DELETE /rivalries/1.json
  def destroy
    @rivalry.destroy
    respond_to do |format|
      format.html { redirect_to rivalries_url, notice: 'Rivalry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rivalry
      @rivalry = Rivalry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rivalry_params
      params.require(:rivalry).permit(:person_id)
    end
end
