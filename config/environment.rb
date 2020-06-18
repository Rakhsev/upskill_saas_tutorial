# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :port           => ENV['TRUSTIFI_SMTP_PORT'],
  :address        => ENV['TRUSTIFI_SMTP_SERVER'],
  :user_name      => ENV['TRUSTIFI_SMTP_LOGIN'],
  :password       => ENV['TRUSTIFI_SMTP_PASSWORD'],
  :domain         => 'desolate-journey-66390.herokuapp.com',
  :authentication => :plain,
}
ActionMailer::Base.delivery_method = :smtp