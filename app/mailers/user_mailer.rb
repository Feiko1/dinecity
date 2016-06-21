class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome(user)
    @user = user

    # mail(to: "matthijs.m.maas@gmail.com", subject: "Welcome to DineCity! | Great Dining is a Principle")
    mail(to: @user.email, subject: "Welcome to DineCity! | Great Food is a Principle")
  end
end
