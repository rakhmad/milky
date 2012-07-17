class SessionsController < ApplicationController
  def new

  end

  def create
    user = User.find_by_username(params[:session][:username])
    if user && user.authenticate(params[:session][:password]) && user.status
      sign_in user
      redirect_to products_path
    else
      flash[:error] = 'Invalid username and/or password combination'
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to signin_path
  end
end
