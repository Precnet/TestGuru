require_relative '../../app/models/test'

class User < ApplicationRecord
  def get_passed_tests_by(level)
    message = 'There is no such test level in Database!'
    raise ArgumentError, message unless level_exists? level

    passed_tests = UserProfile.where(user_id: id, test_status: 'passed').pluck(:test_id)
    Test.where(id: passed_tests, level: level).pluck(:title)
  end

  private

  def level_exists?(level)
    Test.pluck(:level).include?(level)
  end
end
