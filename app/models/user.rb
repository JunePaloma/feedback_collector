class User < ApplicationRecord
has_many :user_groups
has_many :groups, through: :user_groups

  def team_members(group_id)
    groups.find(group_id).users.where.not(id: self.id)
  end

  def self.find_or_create_from_auth(auth)
      user =  User.find_or_create_by(github_uid: auth['uid'])
      user.name         = auth['info']['name']
      user.github_uid   = auth['uid']

      user.update(github_token: auth['credentials']['token'])
      user.save
      user
  end

end
