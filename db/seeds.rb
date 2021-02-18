puts "Start seeding"

puts "Cleanup 🧹"
Restaurant.destroy_all

10.times do |index|
  puts "Creating new restaurant 🚜"
  resto = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    chef_name: Faker::Name.name,
    rating: (1..5).to_a.sample
  )

  3.times do
    puts "Creating new review for #{resto.name} 🚜"
    Review.create(
      content: Faker::Lorem.paragraph,
      restaurant: resto
    )
  end
end

puts "Done! 🍑"