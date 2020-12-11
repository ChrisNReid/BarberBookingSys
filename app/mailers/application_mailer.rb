class ApplicationMailer < ActionMailer::Base
  default to:'info@booking.com', from: 'info@booking.com'
  layout 'mailer'
end
