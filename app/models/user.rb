require_relative 'test'

class User < ApplicationRecord
  def get_passed_tests_by(level)
    message = "There is no test level '#{level}' in Database!"
    raise ArgumentError, message unless level_exists? level

    query = 'join user_profiles on users.id = user_profiles.user_id
              join tests on user_profiles.test_id = tests.id'
    User.joins(query)
        .where(tests: { level: level })
        .where(users: { id: id })
        .pluck(:title)
  end

  private

  def level_exists?(level)
    Test.where(level: level).count.nonzero?
  end
end
