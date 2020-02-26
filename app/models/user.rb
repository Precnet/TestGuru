require_relative 'test'

class User < ApplicationRecord
  has_many :user_profiles
  has_many :tests, through: :user_profiles
  def get_passed_tests_by(level)
    # query = 'join user_profiles on tests.id = user_profiles.test_id'
    Test.where(level: level)
        .pluck(:title)
  end
end
