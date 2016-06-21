class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome(user)
    @user = user

    mail(to: "#{user.first_name} #{user.last_name} <#{user.email}>", subject: "Welcome to DineCity! | Great Dining is a Duty")
  end
end
