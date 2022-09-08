puts "🌱 Seeding spices..."

# Seed your database here
20.times do
    Word.create(
        word: Faker::Quote.famous_last_words,
        user: Faker::Name.name
    )
end

100.times do
    Comment.create(
        comment: Faker::Lorem.sentence,
        user: Faker::Name.name,
        word_id: rand(1..20)
    )
end

puts "✅ Done seeding!"
