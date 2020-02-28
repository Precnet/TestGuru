# frozen_string_literal: true

require_relative 'category'

class Test < ApplicationRecord
  has_many :questions
  has_many :user_profiles
  has_many :users, through: :user_profiles
  belongs_to :category
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  scope :easy, -> { where(level: 0..1) }
  scope :standard, -> { where(level: 2..4) }
  scope :difficult, -> { where(level: 5..Float::INFINITY) }

  def self.get_test_by_category(category_name)
    pp joins(:category)
      .where(categories: { title: category_name })
      .order(title: :desc)
      .pluck(:title)
  end
end
