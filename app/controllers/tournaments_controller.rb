class TournamentsController < ApplicationController  
  before_action :require_login
  before_action :require_authorization, only: [:edit, :update]

  def show

    @title = "Results"
    @tournament = Tournament.find(params[:id].to_i())

  end

  def edit

    @title = "Results"
    @tournament = Tournament.find(params[:id].to_i())

  end

  def update
    @tournament = Tournament.find(params[:id].to_i())
    flash[:error] = false
    flash[:notice] = ""

    params[:tournament][:groups_attributes].each do |key_group, array_group|
      array_group[:matches_attributes].each do |key_match, array_match|
        
        match = Match.find_by(:id => array_match[:id].to_i())
        
        if match != nil then

          if !array_match[:score_a].blank? && !array_match[:score_b].blank? then
            match.score_a = array_match[:score_a].to_i()
            match.score_b = array_match[:score_b].to_i()

            if array_match[:team_won_penalties_id].blank? then
              match.team_won_penalties_id = nil
            else
              match.team_won_penalties_id = array_match[:team_won_penalties_id].to_i()
            end

            if !match.save then
              flash[:error] = true
              
              match.errors.full_messages.each do |msg|
                flash[:notice] += msg + "\n"
              end

            else
              match.update_bet_points
            end 

          end

        end

      end
    end

    if !params[:tournament][:winner_id].blank? then
      @tournament.winner = Team.find(params[:tournament][:winner_id].to_i())
    end

    if !params[:tournament][:runnerup_id].blank? then
      @tournament.runnerup = Team.find(params[:tournament][:runnerup_id].to_i())
    end

    if !@tournament.save then
      flash[:error] = true
      
      @tournament.errors.full_messages.each do |msg|
              flash[:notice] += msg + "\n"
      end
    else
      @tournament.update_bet_points
    end

    if !flash[:error] then
      flash[:notice] = "Successfully saved bets"  
      redirect_to :action => 'edit'
    else 
      redirect_to :action => 'edit'  
    end 

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

  #action that blocks access to change results if you are not the admin
  def require_authorization
    unless current_user.id == Tournament.find(params[:id].to_i()).admin_tournament_id
    redirect_to :action => 'show'
    end
  end

end