# frozen_string_literal: true

# require 'rspec'
require 'rails_helper'
require_relative '../../app/models/category'

describe Category, type: :model do
  context 'category management' do
    it 'should by default return list af categories in ascending order' do
      categories = Category.all.map(&:title).insert(0, 'Aviation').insert(-1, 'Zen')
      Category.new(title: 'Zen').save
      Category.new(title: 'Aviation').save
      expect(Category.all.map(&:title)).to eq(categories)
    end
  end
end
