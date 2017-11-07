class Question < ApplicationRecord
  has_many :groups
  has_many :questions
end
