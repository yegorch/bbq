class ApplicationMailer < ActionMailer::Base
  default from: Rails.application.secrets.mailjet[:sender]
  layout 'mailer'
end
