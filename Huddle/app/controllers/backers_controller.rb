class BackersController < ApplicationController
  before_action :set_backer, only: [:show, :edit, :destroy]
  
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
        format.html { redirect_to user_event_backer_path(params[:user_id],params[:event_id],@backer), notice: 'Backer was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # DELETE /backers/1
  # DELETE /backers/1.json
  def destroy
    @backer.destroy
    respond_to do |format|
      format.html { redirect_to user_path, notice: 'Backer was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_backer
      @backer = Backer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def backer_params
      params.require(:backer).permit(:paid_amount, :user_id, :event_id)
    end
end
