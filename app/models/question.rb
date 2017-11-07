class Question < ApplicationRecord
  has_many :groups
  has_many :question_options
  has_many :options, through: :question_options
end
