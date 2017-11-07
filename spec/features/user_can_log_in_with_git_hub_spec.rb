require 'rails_helper'
describe "feature" do
  it "as a user I can authenticate with my GitHub account" do
    visit root_path
    mock_auth_hash
    click_on("Login with GitHub")
    expect(current_path).to eq(dashboard_path)
    expect(page).to have_content("You are Logged in As Kali Borkoski")
    expect(page).to have_content("Logout")
  end
end


# def mock_auth_hash
#   OmniAuth.config.test_mode = true
#   OmniAuth.config.mock_auth[:github] = {
#   'info' => {
#     'uid' => '26794850',
#     'name' => 'Kali Borkoski',
#   },
#   'credentials' => {
#     'token' => ENV["GITHUB_USER_TEST_TOKEN"]
#   }
# }
# end
