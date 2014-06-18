class LeaguesController < ApplicationController  
  before_action :require_login

  def show

    @title = "Ranking"
    @league = League.find(params[:id].to_i())

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