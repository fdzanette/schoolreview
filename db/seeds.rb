# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

School.destroy_all


puts 'Creating 20 fake Schools...'
20.times do
  school = School.new(
    name:    Faker::Company.name,
    address: "#{Faker::Address.street_address}",
    city: "#{Faker::Address.city}",
    photo: "http://res.cloudinary.com/dmcyzy6ik/image/upload/v1530552913/School3.jpg",
  )
  school.save!
  puts 'Creating 10 fake Reviews...'
  10.times do
    review = Review.new(
    rating:  rand(0..5),
    content: "#{Faker::Friends.quote}",
      )
    review.school = school
    review.user = User.find(1)
    review.save!
    end
end
puts 'Finished!'
