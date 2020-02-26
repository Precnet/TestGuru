# frozen_string_literal: true

require_relative 'category'

class Test < ApplicationRecord
  has_many :questions
  has_many :user_profiles
  has_many :users, through: :user_profiles
  belongs_to :category
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  def self.get_test_by_category(category_name)
    pp joins(:category)
      .where(categories: { title: category_name })
      .order(title: :desc)
      .pluck(:title)
  end
end
