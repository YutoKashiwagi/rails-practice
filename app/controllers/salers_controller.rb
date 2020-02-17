class SalersController < ApplicationController
  before_action :set_saler, only: [:show, :edit, :update, :destroy]

  # GET /salers
  # GET /salers.json
  def index
    @salers = Saler.all
  end

  # GET /salers/1
  # GET /salers/1.json
  def show
  end

  # GET /salers/new
  def new
    @saler = Saler.new
  end

  # GET /salers/1/edit
  def edit
  end

  # POST /salers
  # POST /salers.json
  def create
    @saler = Saler.new(saler_params)

    respond_to do |format|
      if @saler.save
        format.html { redirect_to @saler, notice: 'Saler was successfully created.' }
        format.json { render :show, status: :created, location: @saler }
      else
        format.html { render :new }
        format.json { render json: @saler.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /salers/1
  # PATCH/PUT /salers/1.json
  def update
    respond_to do |format|
      if @saler.update(saler_params)
        format.html { redirect_to @saler, notice: 'Saler was successfully updated.' }
        format.json { render :show, status: :ok, location: @saler }
      else
        format.html { render :edit }
        format.json { render json: @saler.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /salers/1
  # DELETE /salers/1.json
  def destroy
    @saler.destroy
    respond_to do |format|
      format.html { redirect_to salers_url, notice: 'Saler was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_saler
      @saler = Saler.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def saler_params
      params.require(:saler).permit(:name)
    end
end
