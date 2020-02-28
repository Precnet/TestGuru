# frozen_string_literal: true

# require 'rspec'
require 'rails_helper'
require_relative '../../app/models/test'

describe Test, type: :model do
  context 'verification' do
    it 'should validate title presence' do
      expect(Test.new.valid?).to eq(false)
      expect(Test.new(title: 123, category_id: 'qwe', author_id: 'cde').valid?).to eq(false)
      category_id = Category.all.map(&:id).sample
      author_id = User.all.map(&:id).sample
      expect(Test.new(title: 'Some new test',
                      category_id: category_id,
                      author_id: author_id).valid?).to eq(true)
    end
    it 'should validate level: 0..INFINITY, integer' do
      c_id = Category.all.map(&:id).sample
      a_id = User.all.map(&:id).sample
      cases = [{ data: { title: 'new1', category_id: c_id, author_id: a_id, level: 'two' },
                 result: false },
               { data: { title: 'new2', category_id: c_id, author_id: a_id, level: 100.1 },
                 result: false },
               { data: { title: 'new3', category_id: c_id, author_id: a_id, level: -100 },
                 result: false },
               { data: { title: 'new2', category_id: c_id, author_id: a_id, level: [23] },
                 result: false },
               { data: { title: 'new2', category_id: c_id, author_id: a_id, level: 100 },
                 result: true }]
      cases.each { |t_case| expect(Test.new(t_case[:data]).valid?).to eq(t_case[:result]) }
    end
    it 'should validate uniqueness of title+level combination' do
      c_id = Category.all.map(&:id).sample
      a_id = User.all.map(&:id).sample
      existing_test = Test.all.sample
      expect(Test.new(title: existing_test.title, category_id: c_id,
                      author_id: a_id, level: existing_test.level).valid?).to eq(false)
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
