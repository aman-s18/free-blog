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
    user.create_profile(
      full_name: "#{Faker::Name.prefix} #{Faker::Name.name}",
      nick_name: [Faker::Name.male_first_name, Faker::Name.female_first_name].sample,
      phone: Faker::PhoneNumber.cell_phone_in_e164,
      bio: Faker::Lorem.paragraph
    )
    puts 'User & Profile created successfully!'
  else
    puts user.errors.full_messages.to_sentence
  end
end
puts "Seed Finished..."