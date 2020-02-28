class Answer < ApplicationRecord
  belongs_to :question
  validates :body, presence: true
  validate :validate_amount_per_question
  scope :correct, -> { where(is_correct: true) }

  private

  def validate_amount_per_question
    if Answer.where(question_id: question_id).count >= 4
      errors.add(:question_id, 'Too many answers!')
    end
  end
end
