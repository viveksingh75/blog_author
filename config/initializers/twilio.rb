
puts "Twilio initializer is being loaded"

require 'twilio-ruby'
Twilio.configure do |config|
    config.account_sid = 'ACa06d4e71441b9884ea3cf48135039706'
    config.auth_token = 'a8e98bfc2974ab2e440b6b5761168f97'
  end