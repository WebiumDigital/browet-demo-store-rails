# Browet Global Configuration
Browet.init do |config|

  # Browet API URL
  config.version_api = 'v1'

  # Browet API account
  config.account = 'demo'

  # Browet API tokens
  config.default_token = 'mMpQWExWMpNw2f4IBvrezw'
  config.localized_tokens = {
    # :ru => 'token for ru locale',
    # :en => 'token for en locale'
  }

  # Cache life time (minutes)
  config.ttl = 10

  # Disable cache
  config.enable_cache = true

end
