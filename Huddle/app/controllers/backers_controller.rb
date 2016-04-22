class BackersController < ApplicationController
  before_action :set_backer, only: [:show, :destroy]
  before_action :set_user,:set_event, only: [:create]
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
  
  # POST /backers
  # POST /backers.json
  def create
    @backer = Backer.new
    @backer.user = @user
    @backer.event = @event
    @backer.paid_amount = @amount
    @backer.perk_level = calc_perk_level @amount

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
    
    def set_user
      @user = User.find(params[:user_id]) 
    end
    
    def set_event
      @event = Event.find(params[:event_id])
      @amount = params[:backer][:paid_amount]
    end
    
    def calc_perk_level(amount)
      case amount.to_i
        when 1..100 then 1
        when 101..1000 then 2
        when 1001..5000 then 3
        when 5001..10000 then 4
        else 0
      end
    end
end
