class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    UserNotifierMailer.send_contact_email(user_params).deliver_now
    User.create(user_params)
    flash[:success] = "登録申請が完了しました。"
    redirect_to new_user_path
  end

  def show
    redirect_to root_path unless current_user
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :company_name, :phone_number1, :phone_number2, :phone_number3, :password, :password_confirmation)
  end
end
