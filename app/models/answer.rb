class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :user

  validates :response, :question, :user, presence: true
end
