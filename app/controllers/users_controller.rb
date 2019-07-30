class UsersController < ApplicationController

  def new
     @user = User.new 
  end

  def create #this is the input
    @user = User.new user_params #setting up the users
    if @user.save #if .save returns true its a valid user.
      session[:user_id] = @user.id # Login when you've signed up
      redirect_to root_path #speaks for itself
    else
      render :new #cant remember if the :new is refering to the route of to the def above...
    end
  end

  private
  def user_name
    params.require(:user).permit(:email, :password, :password_confirmation) #in plain english its asking that he user requires a email, password and password information. This protectus us from any sql injections that could give administrative autherisation.
  end
end
