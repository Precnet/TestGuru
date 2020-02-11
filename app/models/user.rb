require_relative '../../app/models/test'

class User < ApplicationRecord
  def get_passed_tests_by(level)
    message = 'There is no such test level in Database!'
    raise ArgumentError, message unless level_exists? level

    p UserProfile.where(user_id: id)
  end

  private

  def level_exists?(level)
    Test.level.include?(level)
  end
end
