class UsersController < ApplicationController
  # index, show, edit, new, create, update, destroy

  # signup page
  def new
    @user = User.new
  end

  # form submit (create user, send email)
  def create
    email = params[:user][:email]
    name = params[:user][:name]
    company_name = params[:user][:company_name]
    phone_number1 = params[:user][:phone_number1]
    phone_number2 = params[:user][:phone_number2]
    phone_number3 = params[:user][:phone_number3]
    password = params[:user][:password]
    password_confirmation = params[:user][:password_confirmation]
    UserNotifierMailer.send_contact_email(email, name, company_name, phone_number1, phone_number2, phone_number3, password, password_confirmation).deliver_now
    flash[:success] = "登録申請が完了しました。"
    redirect_to new_user_path
  end

  def show
    redirect_to root_path unless current_user
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, company_name, phone_number1, phone_number2, phone_number3, password, password_confirmation)
  end
end
