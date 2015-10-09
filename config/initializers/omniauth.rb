Rails.application.config.middleware.use OmniAuth::Builder do
  provider :genius, ENV['GENIUS_CLIENT_ID'], ENV['GENIUS_CLIENT_SECRET'], {:scope => 'me'}
end

