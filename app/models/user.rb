class User < ApplicationRecord
  has_many :user_profiles
  has_many :tests, through: :user_profiles
  def get_passed_tests_by(level)
    tests.by_level(level)
  end
end
