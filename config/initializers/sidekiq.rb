# config/initializers/sidekiq.rb
Sidekiq.configure_server do |config|
    config.redis = { url: 'redis://localhost:6379/0' } # Set your Redis URL
  end
  
  Sidekiq.configure_client do |config|
    config.redis = { url: 'redis://localhost:6379/0' } # Set your Redis URL
  end
  