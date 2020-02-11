# frozen_string_literal: true

# require 'rspec'
require 'rails_helper'
require_relative '../../app/models/user'

describe User, type: :model do
  context 'user management' do
    it 'should return an empty array for users without passed tests' do
      user = User.find(1)
      expect { user.get_passed_tests_by(1) }.not_to raise_error
      expect(user.get_passed_tests_by(1)).to eq([])
    end
    it 'should select all passed tests for user' do
      user_bob = User.find(2)
      expect(user_bob.get_passed_tests_by(1)).to eq(['Ruby: Basics', 'History: Dark Ages'])
      user_alisa = User.find(3)
      expect(user_alisa.get_passed_tests_by(1)).to eq(['History: Dark Ages'])
      expect(user_alisa.get_passed_tests_by(4)).to eq(['Math: High'])
    end
    it 'should raise an error with nonexistant level value' do
      user_bob = User.find(2)
      expect { user_bob.get_passed_tests_by(100) }.to raise_error(ArgumentError)
    end
  end
end
