class BedsittersController < ApplicationController
  before_action :set_bedsitter, only: [:show, :edit, :update, :destroy]

  # GET /bedsitters
  # GET /bedsitters.json
  def index
    @bedsitters = Bedsitter.all
  end

  # GET /bedsitters/1
  # GET /bedsitters/1.json
  def show
  end

  # GET /bedsitters/new
  def new
    @bedsitter = Bedsitter.new
  end

  # GET /bedsitters/1/edit
  def edit
  end

  # POST /bedsitters
  # POST /bedsitters.json
  def create
    @bedsitter = Bedsitter.new(bedsitter_params)

    respond_to do |format|
      if @bedsitter.save
        format.html { redirect_to @bedsitter, notice: 'Bedsitter was successfully created.' }
        format.json { render :show, status: :created, location: @bedsitter }
      else
        format.html { render :new }
        format.json { render json: @bedsitter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bedsitters/1
  # PATCH/PUT /bedsitters/1.json
  def update
    respond_to do |format|
      if @bedsitter.update(bedsitter_params)
        format.html { redirect_to @bedsitter, notice: 'Bedsitter was successfully updated.' }
        format.json { render :show, status: :ok, location: @bedsitter }
      else
        format.html { render :edit }
        format.json { render json: @bedsitter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bedsitters/1
  # DELETE /bedsitters/1.json
  def destroy
    @bedsitter.destroy
    respond_to do |format|
      format.html { redirect_to bedsitters_url, notice: 'Bedsitter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bedsitter
      @bedsitter = Bedsitter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bedsitter_params
      params.require(:bedsitter).permit(:name, :location, :status, :rent, :bedrooms)
    end
end
