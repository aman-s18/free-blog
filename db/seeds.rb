puts "Seed Started..."
require 'faker'
5.times do 
	user = User.new(
    email: Faker::Internet.email,
    password: 123456,
    password_confirmation: 123456,
    confirmation_token: SecureRandom.hex(6),
    confirmation_sent_at: DateTime.now,
    confirmed_at: DateTime.now
  )
  if user.save
    puts 'User created successfully!'
  else
    puts user.errors.full_messages.to_sentence
  end
end
puts "Seed Finished..."