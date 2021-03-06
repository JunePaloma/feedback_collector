class Group < ApplicationRecord
  has_many :user_groups
  has_many :users, through: :user_groups
  belongs_to :project
  belongs_to :cohort
end
