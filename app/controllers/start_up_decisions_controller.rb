class StartUpDecisionsController < ApplicationController
  # GET /start_up_decisions
  # GET /start_up_decisions.json

  before_filter :initialize_variables

  def initialize_variables
    @player_id=1
    @simulation_id=1

  end

  def index
    @start_up_decisions = StartUpDecision.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @start_up_decisions }
    end
  end

  # GET /start_up_decisions/1
  # GET /start_up_decisions/1.json
  def show
    @start_up_decision = StartUpDecision.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @start_up_decision }
    end
  end

  # GET /start_up_decisions/new
  # GET /start_up_decisions/new.json
  def new
    if !StartUpDecision.find_by_player_id(@player_id).nil?
      redirect_to StartUpDecision.find_by_player_id(@player_id)
    else
      @start_up_decision = StartUpDecision.new

      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @start_up_decision }
      end
    end
  end

  # GET /start_up_decisions/1/edit
  def edit
    @start_up_decision = StartUpDecision.find(params[:id])
  end

  # POST /start_up_decisions
  # POST /start_up_decisions.json
  def create
    @start_up_decision = StartUpDecision.new(params[:start_up_decision])
    @price=0
    @price=@price+Taste.find(@start_up_decision.taste_id).price
    @price=@price+Type.find(@start_up_decision.type_id).price
    @price=@price+Packaging.find(@start_up_decision.packaging_id).price
    @price=@price+Topping.find(@start_up_decision.topping_id).price

    @start_up_decision.cost_price=@price


    respond_to do |format|
      if @start_up_decision.save
        format.html { redirect_to @start_up_decision, notice: 'Start up decision was successfully created.' }
        format.json { render json: @start_up_decision, status: :created, location: @start_up_decision }
      else
        format.html { render action: "new" }
        format.json { render json: @start_up_decision.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /start_up_decisions/1
  # PUT /start_up_decisions/1.json
  def update
    @start_up_decision = StartUpDecision.find(params[:id])

    respond_to do |format|
      if @start_up_decision.update_attributes(params[:start_up_decision])
        format.html { redirect_to @start_up_decision, notice: 'Start up decision was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @start_up_decision.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /start_up_decisions/1
  # DELETE /start_up_decisions/1.json
  def destroy
    @start_up_decision = StartUpDecision.find(params[:id])
    @start_up_decision.destroy

    respond_to do |format|
      format.html { redirect_to start_up_decisions_url }
      format.json { head :ok }
    end
  end

  def get_price

  end
end
