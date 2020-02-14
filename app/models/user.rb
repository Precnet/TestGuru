require_relative 'test'

class User < ApplicationRecord
  def get_passed_tests_by(level)
    query = 'join user_profiles on users.id = user_profiles.user_id
              join tests on user_profiles.test_id = tests.id'
    User.joins(query)
        .where(tests: { level: level })
        .where(users: { id: id })
        .pluck(:title)
  end
end
