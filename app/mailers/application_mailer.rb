# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'bemypartner@yopmail.com'
  layout 'mailer'
end
