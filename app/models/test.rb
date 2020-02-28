# frozen_string_literal: true

class Test < ApplicationRecord
  has_many :questions
  has_many :user_profiles
  has_many :users, through: :user_profiles
  belongs_to :category
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  validates :title, presence: true
  validates :level, numericality: { only_integer: true,
                                    greater_than_or_equal_to: 0 }
  validates_uniqueness_of :title, scope: :level
  scope :easy, -> { where(level: 0..1) }
  scope :standard, -> { where(level: 2..4) }
  scope :difficult, -> { where(level: 5..Float::INFINITY) }
  scope :by_category, lambda { |category_name|
    joins(:category)
      .where(categories: { title: category_name })
      .order(title: :desc)
      .pluck(:title)
  }
  scope :by_level, ->(level) { where(level: level).pluck(:title) }
end
