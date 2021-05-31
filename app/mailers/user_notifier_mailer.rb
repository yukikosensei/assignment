class UserNotifierMailer < ActionMailer::Base
  default :from => 'nihongoyukikosensei@gmail.com'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_contact_email(email, name, company_name, phone_number1, phone_number2, phone_number3, password, password_confirmation)
    @email = email
    @name = name
    @company_name = company_name
    @phone_number1 = phone_number1
    @phone_number2 = phone_number2
    @phone_number3 = phone_number3
    @password = password
    @password_confirmation = password_confirmation
    mail( :to => "nihongoyukikosensei@gmail.com",
    :subject => "会員登録申請")
  end
end
