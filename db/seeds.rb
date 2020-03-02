# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# USERS
user_names = %w[Admin Bob Alisa]
users = {}
user_names.each { |name| users[name] = User.create(name: name, email: name + '@email.com') }

# CATEGORIES
categories_names = %w[Programming History Math]
categories = {}
categories_names.each { |cat| categories[cat] = Category.create(title: cat) }

# TESTS
test_levels = %w[basic middle high]
tests_data = []
categories.each_key do |category_name|
  test_levels.each do |level|
    test_name = "#{category_name}: #{level}"
    level_index = test_levels.find_index(level) + 1
    author = users[users.keys.sample].id
    id = categories[category_name].id
    tests_data.append(title: test_name, level: level_index, category_id: id, author_id: author)
  end
end
tests = {}
tests_data.each { |data| tests[data[:title]] = Test.create(data) }

# QUESTIONS
questions_data = []
tests.each_key do |test_name|
  # generate 3 questions for each test
  (1..3).each do |number|
    test_id = tests[test_name].id
    questions_data.append(body: "Question #{number} for " + test_name,
                          test_id: test_id)
  end
end
questions = {}
questions_data.each { |data| questions[data[:body]] = Question.create(data) }

# ANSWERS
answers_data = []
questions.each_key do |q_name|
  # generate 3 answers for each question
  answer_status = [true, false, false].shuffle
  (1..3).each do |number|
    answers_data.append(body: "Answer #{number} for #{q_name}",
                        is_correct: answer_status[number - 1],
                        question_id: questions[q_name].id)
  end
end
answers = []
answers_data.each { |data| answers.append(Answer.create(data)) }

# USER`S PROFILES
user_profiles = []
users.each_key do |name|
  # generate 3 random tests taken per user: can be either passes of failed
  # user can take single test multiple times with different results - why not
  3.times do
    test_id = tests[tests.keys.sample].id
    status = %w[passed failed].sample
    user_profiles.append(UserProfile.create(user_id: users[name].id,
                                            test_id: test_id,
                                            test_status: status))
  end
end
