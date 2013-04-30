OmniAuth.config.logger = Rails.logger

key = ENV['GITHUB_KEY']
secret = ENV['GITHUB_SECRET']
$organization = ENV['GITHUB_ORG']

if key.blank? or secret.blank?
  raise "Environment variables 'GITHUB_KEY' and 'GITHUB_SECRET' were not found"
end

if $organization.blank?
  raise "Environment variable GITHUB_ORG should contain the organization name"
end

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer if Rails.env == "development"
  provider :github, key, secret, :scope => "repo"
end
