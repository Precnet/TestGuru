# frozen_string_literal: true

# require 'rspec'
require 'rails_helper'
require_relative '../../app/models/user'

describe User, type: :model do
  context 'user management' do
    it 'should select all passed tests for user' do
      user_bob = User.find(2)
      expect(user_bob.get_passed_tests_by(1)).to be_a_kind_of(Array)
      user_alisa = User.find(3)
      expect(user_alisa.get_passed_tests_by(1)).to be_a_kind_of(Array)
      expect(user_alisa.get_passed_tests_by(3)).to be_a_kind_of(Array)
    end
  end
end
