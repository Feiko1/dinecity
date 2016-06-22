
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.destroy_all
Restaurant.destroy_all
Photo.destroy_all
Deal.destroy_all
Booking.destroy_all
Review.destroy_all
Course.destroy_all




10.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  email = Faker::Internet.email
  password = Faker::Internet.password
  kind = "user"  #default is (regular) 'user'
  user = User.create(first_name: first_name,
    last_name: last_name,
    email: email,
    password: password,
    kind: kind)
  user.save
end

r = Restaurant.create(name: "Ambrosia", #added one specific restaurant with semantically useful information
  phone_number: 065,
  street_name: "Lange Voorhout",
  street_number: 20,
  city_name: "Den Haag",
  country_name: "The Netherlands",
  postal_code: "2514 EE",
  email_address: "info@ambrosia.nl",
  user_id: (User.all.sample).id
  )
r.save

30.times do
  name = Faker::Lorem.word
  user_id = (User.all.sample).id
  phone_number = Faker::PhoneNumber.phone_number
  street_name = Faker::Address.street_name
  street_number = Faker::Address.building_number
  city_name = Faker::Address.city
  country_name = Faker::Address.country
  postal_code = Faker::Address.postcode
  email_address = Faker::Internet.email

  restaurant = Restaurant.create(name: name,
    phone_number: phone_number,
    street_name: street_name,
    street_number: street_number,
    city_name: city_name,
    country_name: country_name,
    postal_code: postal_code,
    email_address: email_address,
    user_id: user_id
    )
  restaurant.save

  3.times do

    content = Faker::Lorem.paragraph
    rating = rand(1..5)
    review = Review.new
    review.restaurant = restaurant
    review.user       = User.last(10).sample
    review.content    = content
    review.rating     = rating
    review.save
  end

  name = Faker::Company.buzzword
  description = Faker::Lorem.words(4)
  start_date = Faker::Date.backward(14)
  end_date = Faker::Date.forward(23)
  status = Faker::Boolean.boolean
  discount_kind = "discount"
  price = rand(1..60)
  maximum_deal_capacity = rand(1..40)
  monday = Faker::Boolean.boolean
  tuesday = Faker::Boolean.boolean
  wednesday = Faker::Boolean.boolean
  thursday = Faker::Boolean.boolean
  friday = Faker::Boolean.boolean
  saturday = Faker::Boolean.boolean
  sunday = Faker::Boolean.boolean

  deal = Deal.create(name: name,
    description: description,
    start_date: start_date,
    end_date: end_date,
    status: status,
    discount_kind: discount_kind,
    price: price,
    maximum_deal_capacity: maximum_deal_capacity,
    monday: monday,
    tuesday: tuesday,
    wednesday: wednesday,
    thursday: thursday,
    friday: friday,
    saturday: saturday,
    sunday: sunday,
    restaurant: restaurant)
  deal.save
  1.times do

    course_name = "starter"
    description = Faker::Lorem.words(4)

    course = Course.new
    course.deal       = deal
    course.course_name = course_name
    course.description    = description
    course.save
  end

  1.times do

    course_name = "main"
    description = Faker::Lorem.words(4)

    course = Course.new
    course.deal       = deal
    course.course_name = course_name
    course.description    = description
    course.save
  end

  1.times do

    course_name = "desert"
    description = Faker::Lorem.words(4)

    course = Course.new
    course.deal       = deal
    course.course_name = course_name
    course.description    = description
    course.save
  end
end

30.times do
  image_string = Faker::Avatar.image
  restaurant_id = (Restaurant.all.sample).id
  photo = Photo.create(image_string: image_string,
    restaurant_id: restaurant_id
    )
  photo.save
end



15.times do
  user_instance = (User.all.sample)  #

  user_id = user_instance.id
  deal_id = (Deal.all.sample).id
  date = Faker::Time.between(DateTime.now, DateTime.now + 21)
  number_of_people = rand(1..6)
  status = "booking_requested_by_user" #shouldn't status be a string variable? As we cannot 'destroy' it, only cancel it
  visitor_first_name = user_instance.first_name
  visitor_last_name = user_instance.last_name
  visitor_email = user_instance.email
  visitor_phone = Faker::PhoneNumber.phone_number

  booking = Booking.create(
    user_id: user_id,
    deal_id: deal_id,
    date: date,
    number_of_people: number_of_people,
    status: status,
    visitor_first_name: visitor_first_name,
    visitor_last_name: visitor_last_name,
    visitor_email: visitor_email,
    visitor_phone: visitor_phone)
  booking.save
end

# 30.times do
#   restaurant_instance = (Restaurant.all.sample)  #
#   restaurant_id = restaurant_instance.id
#   content = Faker::Lorem.sentence

#   review = Review.create(
#     restaurant_id: restaurant_id,
#     content: content)
#   review.save
# end


