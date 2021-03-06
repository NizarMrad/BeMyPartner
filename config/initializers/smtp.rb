# frozen_string_literal: true

ActionMailer::Base.smtp_settings = {
  user_name: ENV['SENDGRID_USERNAME'],
  password: ENV['SENDGRID_PASSWORD'],
  domain: 'bemypartner-production.herokuapp.com/',
  address: 'smtp.sendgrid.net',
  port: 587,
  authentication: :login,
  enable_starttls_auto: true
}
