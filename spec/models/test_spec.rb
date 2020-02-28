# frozen_string_literal: true

# require 'rspec'
require 'rails_helper'
require_relative '../../app/models/test'

describe Test, type: :model do
  context 'test creation' do
    it 'should validate title presence' do
      expect(Test.new.valid?).to eq(true)
    end
  end
  context 'test management' do
    it 'should return list of tests for category' do
      result_math = ['Math: middle', 'Math: high', 'Math: basic']
      expect(Test.by_category('Math')).to eq(result_math)
      result_programming = ['Programming: middle', 'Programming: high', 'Programming: basic']
      expect(Test.by_category('Programming')).to eq(result_programming)
    end
    it 'should return easy tests (level: 0..1)' do
      expect(Test.easy).to eq(Test.where(level: 0..1))
    end
    it 'should return standard tests (level: 2..4)' do
      expect(Test.standard).to eq(Test.where(level: 2..4))
    end
    it 'should return difficult tests (level: 5..Float::INFINITY)' do
      expect(Test.difficult).to eq(Test.where(level: 5..Float::INFINITY))
    end
  end
end
