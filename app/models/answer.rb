class Answer < ApplicationRecord
  belongs_to :question
  validates :body, presence: true
  scope :correct, -> { where(is_correct: true) }
end
