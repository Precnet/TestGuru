# frozen_string_literal: true

# require 'rspec'
require 'rails_helper'
require_relative '../../app/models/answer'

describe Answer, type: :model do
  context 'verification' do
    it 'should verify body column' do
      expect(Answer.new.valid?).to eq(false)
      expect(Answer.new(body: 'answer',
                        is_correct: false,
                        question_id: Question.all.map(&:id).sample).valid?).to eq(true)
    end
  end
  context 'answers management' do
    it 'return correct answers' do
      expect(Answer.correct.to_a.all? { |answer| answer['is_correct'] }).to eq(true)
    end
  end
end
