class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
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
    params.require(:user).permit(:email, :password, :password_confirmation) #this is stating the params that are permitted to be inputted to by the user on the users signup
  end
end
