OmniAuth.config.logger = Rails.logger

key = ENV['GITHUB_KEY']
secret = ENV['GITHUB_SECRET']

if key.blank? or secret.blank?
  raise "Environment variables 'GITHUB_KEY' and 'GITHUB_SECRET' were not found"
end

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer if Rails.env == "development"
  provider :github, key, secret
end
