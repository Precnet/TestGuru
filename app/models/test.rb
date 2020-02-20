# frozen_string_literal: true

require_relative 'category'

class Test < ApplicationRecord
  has_many :questions
  def self.get_test_by_category(category_name)
    pp joins('join categories on tests.category_id = categories.id')
      .where(categories: { title: category_name })
      .order(title: :desc)
      .pluck(:title)
  end
end
