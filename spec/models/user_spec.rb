# frozen_string_literal: true

# require 'rspec'
require 'rails_helper'
require_relative '../../app/models/user'

describe User, type: :model do
  context 'user creation' do
    it 'should validate email presence' do
      expect(User.new.valid?).to eq(false)
      expect(User.new(name: '123').valid?).to eq(false)
      expect(User.new(name: 'Some name', email: '123.email').valid?).to eq(true)
    end
  end
  context 'user management' do
    it 'should select all passed tests for user' do
      user_bob = User.all.sample
      expect(user_bob.get_passed_tests_by(Test.all.map(&:level).sample)).to be_a_kind_of(Array)
      user_alisa = User.all.sample
      expect(user_alisa.get_passed_tests_by(Test.all.map(&:level).sample)).to be_a_kind_of(Array)
      expect(user_alisa.get_passed_tests_by(Test.all.map(&:level).sample)).to be_a_kind_of(Array)
    end
  end
end
