# frozen_string_literal: true

require_relative 'category'

class Test < ApplicationRecord
  def self.get_test_by_category(category_name)
    query = 'join categories on tests.category_id = categories.id where categories.title = ? order by tests.title desc'
    sanitized_query = sanitize_sql_array([query, category_name])
    joins(sanitized_query).map(&:title)
  end
end
