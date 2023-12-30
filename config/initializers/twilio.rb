
puts "Twilio initializer is being loaded"

require 'twilio-ruby'
Twilio.configure do |config|
    config.account_sid = 'ACf135a66f46447f41aa5f2f91e93f7330'
    config.auth_token = '3374b2de58e8c744c0439f11daa64ae7'
  end