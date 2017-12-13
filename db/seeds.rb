
puts "Creating user.."
User.create(name:"eita", password: "123456", password_confirmation: "123456")
puts "User created with successfully!"

puts "Creating question.."
Question.create(ask: "Question 1", private: false, user: User.last)
puts "Question created with successfully!"

puts "Creating answer.."
Answer.create(response: "teste response", question: Question.last, user: User.last)
puts "Answer created with successfully"
