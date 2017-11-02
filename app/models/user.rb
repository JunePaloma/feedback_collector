class User < ApplicationController

  def self.find_or_create_from_auth(auth)
    binding.pry
    user = User.find_or_create_by(github_uid: auth['uid'])
      user.name         = auth['info']['name']
      user.github_uid   = auth['uid']
      user.github_token = auth['credentials']['token']
  end
end
