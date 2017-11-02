class SessionsController < ApplicationController
  def create
    user = User.find_or_create_from_auth(request.env["omniauth.auth"])
    if user

      session[:user_id] = user.id
      redirect_to dashboard_path
    else
      redirect to root_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end

  #   @response =
  # #  Faraday.post("https://github.com/login/oauth/access_token?client_id=ENV["GitHubClient"]&client_secret=ENV["GitHubSecret"]&code=#{params["code"]}")
  # Faraday.post("https://github.com/login/oauth/access_token?client_id=[c91fac42a856921f4d79]&client_secret=[b499a6a6327f8620b18d3affa2069d391f2cd8f9]&code=#{params["code"]}")
  #  token = @response.body.split(/\W+/)[1]
  #  binding.pry
