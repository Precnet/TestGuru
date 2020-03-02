# frozen_string_literal: true

# require 'rspec'
require 'rails_helper'

describe Question, type: :model do
  context 'validation' do
    it 'should validate body' do
      expect(Question.new.valid?).to eq(false)
      expect(Question.new(body: 'new question',
                          test_id: Test.all.map(&:id).sample).valid?).to eq(true)
    end
  end
end
