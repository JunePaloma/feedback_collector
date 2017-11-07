class QuestionOption < ApplicationRecord
  belongs_to :questions
  belongs_to :options
end
