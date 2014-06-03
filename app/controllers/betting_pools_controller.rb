class BettingPoolsController < ApplicationController  
  before_action :require_login

  #action to render new user form
  def edit

    @title = "Bets"

    @betting_pool = BettingPool.find(params[:id].to_i())
    @tournament = @betting_pool.tournament
    @bets = @betting_pool.bets

  end

  def update
    @betting_pool = BettingPool.find(params[:id].to_i())
    @bets = @betting_pool.bets

    params[:betting_pool][:bets_attributes].each do |key, array|
      bet = @bets.find_by(:match_id => array[:match_id].to_i())
      bet.score_a = array[:score_a].to_i()
      bet.score_b = array[:score_b].to_i()
      bet.save
    end

    @betting_pool.winner = Team.find(params[:betting_pool][:winner_id].to_i())
    @betting_pool.runnerup = Team.find(params[:betting_pool][:runnerup_id].to_i())

    if @betting_pool.save then
      flash[:notice] = "Successfully saved bets"  
      redirect_to :action => 'edit'
    else  
      render :action => 'edit'  
    end 

  end

  private

  #action that blocks access to pages without login
  def require_login
    unless current_user != nil
    flash[:error] = true
    flash[:notice] = "You must be logged in to perform this action"
    redirect_to :controller => 'users', :action => 'login', :controller => "users"
    end
  end

end