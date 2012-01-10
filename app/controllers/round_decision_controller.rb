class RoundDecisionController < ApplicationController

  before_filter :get_variables

  def get_variables
    @player_id=1
    @round_id=1
    @net_worth=100
  end

  def new

    @round_debt_funding=RoundDebtFunding.new
    @round_market=RoundMarket.new
    @round_employee_incentive=RoundEmployeeIncentives.new
    @round_channel_incentive=RoundChannelIncentive.new
    @round_price=RoundPrice.new
    @round_factories=Array.new(3) { RoundFactories.new }
    @round_advertisements=Array.new(5) { RoundAdvertising.new }

    @sizes=Size.all
    @ads=Advertising.all


  end

  def create

    #render :text=>params
    #return
    #to save debt funding
    @round_debt_funding=RoundDebtFunding.new(params[:round_debt_funding])
    if !@round_debt_funding.save
      redirect_to new_round_decision_path
    end

#to save round_markets
    if  !params[:round_market][:market_id].nil?
      params[:round_market][:market_id].each do |market|
        @round_market=RoundMarket.new
        @round_market.market_id=market
        @round_market.player_id=params[:round_market][:player_id]
        @round_market.round_id=params[:round_market][:round_id]
        if !@round_market.save
          redirect_to new_round_decision_path
        end
      end

    end

    #to save round_prices

    @round_price=RoundPrice.new(params[:round_price])
    if !@round_price.save
      redirect_to new_round_decision_path
    end

    #to save employee incentives

    if !params[:round_employee_incentives][:employee_incentive_id].nil?
      params[:round_employee_incentives][:employee_incentive_id].each do |employee_incentive|
        @round_employee_incentive=RoundEmployeeIncentives.new
        @round_employee_incentive.employee_incentive_id=employee_incentive
        @round_employee_incentive.player_id=params[:round_employee_incentives][:player_id]
        @round_employee_incentive.round_id=params[:round_employee_incentives][:round_id]
        if !@round_employee_incentive.save
          redirect_to new_round_decision_path
        end
      end

    end

    #to save channel incentives
    if !params[:round_channel_incentive][:channel_incentive_id].nil?
      params[:round_channel_incentive][:channel_incentive_id].each do |channel_incentive|
        @round_channel_incentive=RoundChannelIncentive.new
        @round_channel_incentive.channel_incentive_id=channel_incentive
        @round_channel_incentive.player_id=params[:round_channel_incentive][:player_id]
        @round_channel_incentive.round_id=params[:round_channel_incentive][:round_id]
        if !@round_channel_incentive.save
          redirect_to new_round_decision_path
        end
      end

    end

    #to save factories
    if !params[:round_factories].nil?
      @round_factories = params[:round_factories].values.collect { |round_factory| RoundFactories.new(round_factory) }
      @round_factories.each do |round_factory|
        if round_factory.size_id !=0
          round_factory.save
        end
      end
    end

    #to save round_advertisement
    if !params[:round_advertisement].nil?
      @round_advertisements = params[:round_advertisement].values.collect { |round_ads| RoundAdvertising.new(round_ads) }
      @round_advertisements.each do |round_ads|
        if round_ads.size_id !=0
          round_ads.save
        end
      end
    end


    redirect_to root_path


    #
    #render :text=>params
    #return

  end

end
