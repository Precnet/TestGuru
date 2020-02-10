# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: 'Admin')
User.create(name: 'Bob')
User.create(name: 'Alisa')

Test.create(title: 'Ruby: Basics', level: 1, category_id: 1)
Test.create(title: 'Ruby: Classes', level: 2, category_id: 1)
Test.create(title: 'History: Dark Ages', level: 1, category_id: 2)
Test.create(title: 'Math: Computations', level: 2, category_id: 3)
Test.create(title: 'Math: High', level: 4, category_id: 3)

Category.create(title: 'Programming')
Category.create(title: 'History')
Category.create(title: 'Math')

Question.create(body: 'Question 1 for Ruby?', test_id: 1)
Question.create(body: 'Question 2 for Ruby?', test_id: 1)
Question.create(body: 'Question 1 for classes in Ruby?', test_id: 2)
Question.create(body: 'Question 2 for classes in Ruby?', test_id: 2)
Question.create(body: 'Question 3 for classes in Ruby?', test_id: 2)
Question.create(body: 'Question 1 for History?', test_id: 3)
Question.create(body: 'Question 2 for History?', test_id: 3)
Question.create(body: 'Question 1 for basic Math?', test_id: 4)
Question.create(body: 'Question 1 for high Math?', test_id: 5)
Question.create(body: 'Question 2 for high Math?', test_id: 5)
Question.create(body: 'Question 3 for high Math?', test_id: 5)

Answer.create(body: 'Answer for Q1 Ruby basics', is_correct: true, question_id: 1)
Answer.create(body: 'Answer for Q1 Ruby basics', is_correct: false, question_id: 1)
Answer.create(body: 'Answer for Q1 Ruby basics', is_correct: false, question_id: 1)
Answer.create(body: 'Answer for Q2 Ruby basics', is_correct: true, question_id: 2)
Answer.create(body: 'Answer for Q2 Ruby basics', is_correct: false, question_id: 2)
Answer.create(body: 'Answer for Q2 Ruby basics', is_correct: false, question_id: 2)
Answer.create(body: 'Answer for Q1 Ruby classes', is_correct: true, question_id: 3)
Answer.create(body: 'Answer for Q1 Ruby classes', is_correct: false, question_id: 3)
Answer.create(body: 'Answer for Q1 Ruby classes', is_correct: false, question_id: 3)
Answer.create(body: 'Answer for Q2 Ruby classes', is_correct: true, question_id: 4)
Answer.create(body: 'Answer for Q2 Ruby classes', is_correct: false, question_id: 4)
Answer.create(body: 'Answer for Q2 Ruby classes', is_correct: false, question_id: 4)
Answer.create(body: 'Answer for Q3 Ruby classes', is_correct: true, question_id: 5)
Answer.create(body: 'Answer for Q3 Ruby classes', is_correct: false, question_id: 5)
Answer.create(body: 'Answer for Q3 Ruby classes', is_correct: false, question_id: 5)
Answer.create(body: 'Answer for Q1 History DA', is_correct: true, question_id: 6)
Answer.create(body: 'Answer for Q1 History DA', is_correct: false, question_id: 6)
Answer.create(body: 'Answer for Q1 History DA', is_correct: false, question_id: 6)
Answer.create(body: 'Answer for Q2 History DA', is_correct: true, question_id: 7)
Answer.create(body: 'Answer for Q2 History DA', is_correct: false, question_id: 7)
Answer.create(body: 'Answer for Q2 History DA', is_correct: false, question_id: 7)
Answer.create(body: 'Answer for Q1 Math basic', is_correct: true, question_id: 8)
Answer.create(body: 'Answer for Q1 Math basic', is_correct: false, question_id: 8)
Answer.create(body: 'Answer for Q1 Math basic', is_correct: false, question_id: 8)
Answer.create(body: 'Answer for Q1 Math high', is_correct: true, question_id: 9)
Answer.create(body: 'Answer for Q1 Math high', is_correct: false, question_id: 9)
Answer.create(body: 'Answer for Q1 Math high', is_correct: false, question_id: 9)
Answer.create(body: 'Answer for Q2 Math high', is_correct: true, question_id: 10)
Answer.create(body: 'Answer for Q2 Math high', is_correct: false, question_id: 10)
Answer.create(body: 'Answer for Q2 Math high', is_correct: false, question_id: 10)
Answer.create(body: 'Answer for Q3 Math high', is_correct: true, question_id: 11)
Answer.create(body: 'Answer for Q3 Math high', is_correct: false, question_id: 11)
Answer.create(body: 'Answer for Q3 Math high', is_correct: false, question_id: 11)
