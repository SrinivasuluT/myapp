class JuliesController < ApplicationController
  before_action :set_july, only: [:show, :edit, :update, :destroy]

  # GET /julies
  # GET /julies.json
  def index
    @julies = July.all
  end

  # GET /julies/1
  # GET /julies/1.json
  def show
  end

  # GET /julies/new
  def new
    @july = July.new
  end

  # GET /julies/1/edit
  def edit
  end

  # POST /julies
  # POST /julies.json
  def create
    @july = July.new(july_params)

    respond_to do |format|
      if @july.save
        format.html { redirect_to @july, notice: 'July was successfully created.' }
        format.json { render action: 'show', status: :created, location: @july }
      else
        format.html { render action: 'new' }
        format.json { render json: @july.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /julies/1
  # PATCH/PUT /julies/1.json
  def update
    respond_to do |format|
      if @july.update(july_params)
        format.html { redirect_to @july, notice: 'July was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @july.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /julies/1
  # DELETE /julies/1.json
  def destroy
    @july.destroy
    respond_to do |format|
      format.html { redirect_to julies_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_july
      @july = July.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def july_params
      params.require(:july).permit(:day, :month)
    end
end
