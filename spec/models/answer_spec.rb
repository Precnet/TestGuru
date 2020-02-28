# frozen_string_literal: true

# require 'rspec'
require 'rails_helper'
require_relative '../../app/models/answer'

describe Answer, type: :model do
  context 'answers management' do
    it 'return correct answers' do
      expect(Answer.correct.to_a.all? { |answer| answer['is_correct'] }).to eq(true)
    end
  end
end
