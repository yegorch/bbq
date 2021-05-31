class ApplicationMailer < ActionMailer::Base
  default from: Rails.application.secrets[:sender]
  layout 'mailer'
end
