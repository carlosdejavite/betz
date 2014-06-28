class BettingPoolsController < ApplicationController  
  before_action :require_login

  def show

    @title = "Bets"

    @betting_pool = BettingPool.find(params[:id].to_i())
    @tournament = @betting_pool.tournament

  end

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

    flash[:error] = false
    flash[:notice] = ""

    params[:betting_pool][:bets_attributes].each do |key, array|
      bet = @bets.find_by(:match_id => array[:match_id].to_i())
      if bet != nil && array[:score_b] != nil && array[:score_a] != nil then
        bet.score_a = array[:score_a].to_i()
        bet.score_b = array[:score_b].to_i()
        if array[:team_won_penalties_id].blank? then
          bet.team_won_penalties_id = nil
        else
          bet.team_won_penalties_id = array[:team_won_penalties_id]
        end
        
        if !bet.save then
          flash[:error] = true
          bet.errors.full_messages.each do |msg|
            flash[:notice] += msg + "\n"
          end
        end

      else
        if !array[:score_a].blank? && !array[:score_b].blank? then
          bet = Bet.new(:match_id => array[:match_id].to_i())
          bet.betting_pool = @betting_pool
          bet.score_a = array[:score_a].to_i()
          bet.score_b = array[:score_b].to_i()
          if array[:team_won_penalties_id].blank? then
            bet.team_won_penalties_id = nil
          else
            bet.team_won_penalties_id = array[:team_won_penalties_id]
          end

          if !bet.save then
            flash[:error] = true
            bet.errors.full_messages.each do |msg|
              flash[:notice] += msg + "\n"
            end
          end

        end
      end
    end

    if !params[:betting_pool][:winner_id].blank? then
      @betting_pool.winner = Team.find(params[:betting_pool][:winner_id].to_i())
    end

    if !params[:betting_pool][:runnerup_id].blank? then
      @betting_pool.runnerup = Team.find(params[:betting_pool][:runnerup_id].to_i())
    end

    if !@betting_pool.save then
      flash[:error] = true
      @betting_pool.errors.full_messages.each do |msg|
        flash[:notice] += msg + "\n"
      end 
    end

    if !flash[:error] then
      flash[:notice] = "Successfully saved bets"
    end

    redirect_to :action => 'edit'

  end

  private

  #action that blocks access to pages without login
  def require_login
    unless current_user != nil
    flash[:error] = true
    flash[:notice] = "You must be logged in to perform this action"
    redirect_to :controller => 'users', :action => 'login'
    end
  end

end