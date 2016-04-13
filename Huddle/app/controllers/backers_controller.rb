class BackersController < ApplicationController
  before_action :set_backer, only: [:show, :edit, :update, :destroy]

  # GET /backers
  # GET /backers.json
  def index
    @backers = Backer.all
  end

  # GET /backers/1
  # GET /backers/1.json
  def show
  end

  # GET /backers/new
  def new
    @backer = Backer.new
  end

  # GET /backers/1/edit
  def edit
  end

  # POST /backers
  # POST /backers.json
  def create
    @backer = Backer.new(backer_params)

    respond_to do |format|
      if @backer.save
        format.html { redirect_to @backer, notice: 'Backer was successfully created.' }
        format.json { render :show, status: :created, location: @backer }
      else
        format.html { render :new }
        format.json { render json: @backer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /backers/1
  # PATCH/PUT /backers/1.json
  def update
    respond_to do |format|
      if @backer.update(backer_params)
        format.html { redirect_to @backer, notice: 'Backer was successfully updated.' }
        format.json { render :show, status: :ok, location: @backer }
      else
        format.html { render :edit }
        format.json { render json: @backer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /backers/1
  # DELETE /backers/1.json
  def destroy
    @backer.destroy
    respond_to do |format|
      format.html { redirect_to backers_url, notice: 'Backer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_backer
      @backer = Backer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def backer_params
      params.require(:backer).permit(:paid_amount, :perk_level)
    end
end
