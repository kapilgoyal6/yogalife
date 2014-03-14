class SessionsController < ApplicationController
  def new
  	render :layout => false

  end

  def create
  user = User.authenticate(params[:email], params[:password])
  if user
    session[:user_id] = user.id
    # redirect_to "/admin", :notice => "Logged in!"
    render 'admin/dashboard'

  else
    flash.now.alert = "Invalid email or password"
    # render "new"
    redirect_to "/admin/login", :notice => "Invalid email or password"
  end
end

def destroy
  session[:user_id] = nil
  redirect_to "/admin/login", :notice => "Logged out!"
end
end
