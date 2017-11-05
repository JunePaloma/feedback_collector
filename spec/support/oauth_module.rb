module OauthModule
  def mock_auth_hash
    OmniAuth.config.mock_auth[:github] = {
      'info' => {
        'uid' => '26794850',
        'name' => 'Kali Borkoski',
      },
      'credentials' => {
        'token' => ENV["GITHUB_USER_TEST_TOKEN"]
      }
    }
  end
end
