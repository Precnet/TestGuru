# frozen_string_literal: true

# require 'rspec'
require 'rails_helper'
require_relative '../../app/models/test'

describe Test, type: :model do
  context 'test management' do
    it 'should raise an error for unexistant category' do
      expect { Test.get_test_by_category('Art') }.to raise_error(ArgumentError)
    end
    it 'should return list of tests for category' do
      expect { Test.get_test_by_category('History') }.not_to raise_error
      result_math = ['Math: High', 'Math: Computations']
      expect(Test.get_test_by_category('Math')).to eq(result_math)
      result_programming = ['Ruby: Classes', 'Ruby: Basics']
      expect(Test.get_test_by_category('Programming')).to eq(result_programming)
    end
  end
end
