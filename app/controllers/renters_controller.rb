class RentersController < ApplicationController
  before_action :set_renter, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /renters
  # GET /renters.json
  def index
    if params[:search].present?
        @names = params[:search].split(" ")
      if @names.length > 1 
        @renters = Renter.where(["first_name LIKE ? AND last_name LIKE ?", "%#{@names[0]}%","%#{@names[1]}%"])
      else
        @renters = Renter.where(["first_name LIKE :search OR last_name LIKE :search", search: "%#{params[:search]}%"])
      end
    else
      @renters = Renter.all
    end
  end

  # GET /renters/1
  # GET /renters/1.json
  def show
  end

  # GET /renters/new
  def new
    @renter = Renter.new
  end

  # GET /renters/1/edit
  def edit
  end

  # POST /renters
  # POST /renters.json
  def create
    @renter = Renter.new(renter_params)

    respond_to do |format|
      if @renter.save
        format.html { redirect_to @renter, notice: 'Renter was successfully created.' }
        format.json { render :show, status: :created, location: @renter }
      else
        format.html { render :new }
        format.json { render json: @renter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /renters/1
  # PATCH/PUT /renters/1.json
  def update
    respond_to do |format|
      if @renter.update(renter_params)
        format.html { redirect_to @renter, notice: 'Renter was successfully updated.' }
        format.json { render :show, status: :ok, location: @renter }
      else
        format.html { render :edit }
        format.json { render json: @renter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /renters/1
  # DELETE /renters/1.json
  def destroy
    @renter.destroy
    respond_to do |format|
      format.html { redirect_to renters_url, notice: 'Renter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_renter
      @renter = Renter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def renter_params
      params.require(:renter).permit(:apartment_ID, :first_name, :last_name)
    end
end
