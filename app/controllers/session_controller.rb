class SessionController < ApplicationController

def new
end

def show
end

def create
  user = User.find_by :email => params[:email]
  if user.present? && user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect_to root_path
  else
    flash[:error_message] ="Put in your details properly idiot!"
    redirect_to login_path
  end
end

def destroy
  session[:user_id] = nil
  redirect_to login_path
end

end
