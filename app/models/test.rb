# frozen_string_literal: true

require_relative 'category'

class Test < ApplicationRecord
  def self.get_test_by_category(category_name)
    message = "There is no category '#{category_name}' in Database!"
    raise ArgumentError, message unless category_exists?(category_name)

    category_id = Category.where(title: category_name).pluck(:id)[0]
    Test.where(category_id: category_id).order(title: :desc).pluck(:title)
  end

  def self.category_exists?(category)
    Category.pluck(:title).include?(category)
  end
end
