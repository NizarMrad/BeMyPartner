# frozen_string_literal: true

class UserMailer < ApplicationMailer
  default from: 'bemypartner@yopmail.com'

  def welcome_email(user)
    @user = user

    @url = 'https://bemypartner-production.herokuapp.com/'

    mail(to: @user.email, subject: 'Bienvenue chez nous !')
  end
end
