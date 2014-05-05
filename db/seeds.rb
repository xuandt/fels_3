(1..100).each do |i| 
  User.create(name: "User#{i}", email: "user#{i}@example.com", 
  password: "123456", password_confirmation: "123456", admin: '0')
end

(1..3).each do |i| 
  User.create(name: "Admin#{i}", email: "admin#{i}@example.com", 
  password: "123456", password_confirmation: "123456", admin: '1')
end

(1..50).each do |i| 
  Category.create(name: "Category#{i}", description: "can choose a course he learns from some courses.")
end

(1..30).each do |i| 
  Lesson.create(user_id: i, category_id: i)
end

(1..100).each do |i| 
  Word.create(word: "word#{i}", description: "this is rails app")
end

(1..100).each do |i| 
  Option.create(word_id: i, answer: "good", correct: '0')
end