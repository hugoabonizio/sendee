ActionMailer::Base.smtp_settings = {
  :user_name => ENV['SENDGRID_NAME'],
  :password => ENV['SENDGRID_PASSWORD'],
  :domain => 'pandora-102353.nitrousapp.com',
  :address => 'smtp.sendgrid.net',
  # :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => 'plain',
  :enable_starttls_auto => true
}