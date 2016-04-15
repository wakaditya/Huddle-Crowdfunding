class BackersController < ApplicationController
  before_action :set_backer,:set_user,:set_event, only: [:show, :destroy]
  
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
    @backer.paid_amount = params[:backer][:paid_amount]
    
    @backer.perk_level = calc_perk_level @backer.paid_amount

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
      if !Event.exists? id: params[:event_id]
        @event = Event.using(:mumbai_shard).find(params[:event_id])
      else
        @event = Event.find(params[:event_id])
      end
    end
    
    def calc_perk_level(amount)
      case amount
          when 1..100 then 1
          when 101..1000 then 2
          when 1001..5000 then 3
          when 5001..10000 then 4
          else 0
      end
    end
end
