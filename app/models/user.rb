class User < ApplicationRecord
  has_many :user_profiles
  has_many :tests, through: :user_profiles
  validates :email, presence: true

  def get_passed_tests_by(level)
    tests.by_level(level).pluck(:title)
  end
end
