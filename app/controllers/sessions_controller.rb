class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      cookies[:user_id] = user.id
      redirect_to user_path(user)
    else
     render 'new'
    end
  end

  def show
  end
end
