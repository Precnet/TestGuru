class User < ApplicationRecord
  def get_all_passed_tests_with_level(level)
    message = 'There is no such test level in Database!'
    raise ArgumentError, message unless level_exists? level

    p UserProfile.where(user_id: id)
  end

  private

  def level_exists?(level)
    Test.level.include?(level)
  end
end
