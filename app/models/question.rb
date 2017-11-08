class Question < ApplicationRecord
  has_many :groups
  has_many :question_options
  has_many :options, through: :question_options
  belongs_to :survey
  belongs_to :project
end
