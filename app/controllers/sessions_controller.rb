class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      redirect_to show_session_path
    else
     render 'new'
    end
  end

  def show
  end
end
