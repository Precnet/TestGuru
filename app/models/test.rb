# frozen_string_literal: true

require_relative 'category'

class Test < ApplicationRecord
  def self.get_test_by_category(category_name)
    message = "There is no category '#{category_name}' in Database!"
    raise ArgumentError, message unless category_exists?(category_name)

    query = 'join categories on tests.category_id = categories.id where categories.title = ? order by tests.title desc'
    sanitized_query = sanitize_sql_array([query, category_name])
    joins(sanitized_query).map(&:title)
  end

  def self.category_exists?(category)
    category_occurrences = Category.where(title: category).count
    message = "More than one instance of category: '#{category}' in DB!"
    raise ArgumentError, message if category_occurrences > 1

    category_occurrences.nonzero?
  end
end
