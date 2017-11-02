Rails.application.config.middleware.use OmniAuth::Builder do
    provider :github, ENV['GitHubClient'], ENV['GitHubSecret'], scope: "user"
end
