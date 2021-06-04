class UserNotifierMailer < ActionMailer::Base
  default :from => 'nihongoyukikosensei@gmail.com'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_contact_email(user_params)
    @email = user_params[:email]
    @name = user_params[:name]
    @company_name = user_params[:company_name]
    @phone_number1 = user_params[:phone_number1]
    @phone_number2 = user_params[:phone_number2]
    @phone_number3 = user_params[:phone_number3]
    mail( :to => "nihongoyukikosensei@gmail.com",
    :subject => "会員登録申請")
  end
end
