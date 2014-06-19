class UsersController < ApplicationController  
  before_action :current_user

  #define home
  def index
    if @current_user != nil && @betting_pool != nil then
      @betting_pool = BettingPool.find(session[:last_betting_pool_id])
      redirect_to :controller => 'betting_pools', :action => 'edit', :id => @betting_pool.id
    else
      redirect_to :controller => 'users', :action => 'login' 
    end
  end

  #action to show login
  def login
    if @current_user != nil then
      @betting_pool = BettingPool.find(session[:last_betting_pool_id])
      redirect_to :controller => 'betting_pools', :action => 'edit', :id => @betting_pool.id
    end
    @title = "Login"
  end

  #action that checks login
  def post_login

    @user = User.find_by_email(params[:login])
   
    if @user != nil && @user.password_valid?(params[:password]) then
    	session[:user_id] = @user.id
      @betting_pool = BettingPool.find_by(:user_id => @user.id)
      session[:last_betting_pool_id] = @betting_pool.id
      redirect_to :controller => 'betting_pools', :action => 'edit', :id => @betting_pool.id
    else
    	flash[:error] = true
    	flash[:notice] = "Email and password doesn't match!"
    	redirect_to :action => 'login'
    end

  end

  #action that logouts user
  def logout

    session[:user_id] = nil
    redirect_to :action => 'login'

  end

  #action to render new user form
  def new

    @title = "New User"
    @user = User.new

  end

  def update
  end

  #action to create new
  def create

    if User.exists?(:email => params[:user][:email]) then
      
      @user = User.find_by_email(params[:user][:email])

      if @user.password_digest == nil then
        @user.name = params[:user][:name]
        @user.password = params[:user][:password]

        if params[:user][:password] != params[:password_copy] then
          @user.errors.add(:password, " don't match!")
        end
        
        if params[:user][:password] == params[:password_copy] && @user.save
          flash[:notice] = "Successfully registered user"  
          redirect_to :controller => "users", :action => 'login'
        else  
          render :action => 'new'  
        end
      else
      @user = User.new
      @user.errors.add(:email, " is already registered!")
      render :action => 'new'
      end
    else
      @user = User.new
      @user.errors.add(:email, " wasn't invited!")
      render :action => 'new'
    end
    
  end

end
