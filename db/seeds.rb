(1..100).each do |i| 
  User.create(name: "User#{i}", email: "user#{i}@example.com", 
  password: "123456", password_confirmation: "123456", admin: '0')
end

(1..3).each do |i| 
  User.create(name: "Admin#{i}", email: "admin#{i}@example.com", 
  password: "123456", password_confirmation: "123456", admin: '1')
end

(1..5).each do |i| 
  Category.create(name: "Category#{i}", description: "can choose a course he learns from some courses.")
  (1..30).each do |j| 
    Word.create(word: "word#{j}", meaning: "meaning_word#{j}", category_id: i)
    (1..4).each do |k| 
      Option.create(word_id: j, answer: "answer #{k}", correct: '0')
    end
  end
end

(1..30).each do |i| 
  Lesson.create(user_id: i, category_id: i, count_correct: "15")
end