
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

30.times do
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
end

30.times do
  image_string = Faker::Avatar.image
    restaurant_id = (Restaurant.all.sample).id
  photo = Photo.create(image_string: image_string,
    restaurant_id: restaurant_id
    )
  photo.save
end


30.times do
  name = Faker::Company.buzzword
  description = Faker::Lorem.words(4)
  start_date = Faker::Date.backward(14)
  end_date = Faker::Date.forward(23)
  status = Faker::Boolean.boolean
  discount_kind = "discount"
  discount_value = rand(1..60)
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
    discount_value: discount_value,
    maximum_deal_capacity: maximum_deal_capacity,
    monday: monday,
    tuesday: tuesday,
    wednesday: wednesday,
    thursday: thursday,
    friday: friday,
    saturday: saturday,
    sunday: sunday)
  deal.save
end


30.times do
  user_instance = (User.all.sample)  #

  user_id = user_instance.id
  deal_id = (Deal.all.sample).id
  date = Faker::Time.between(DateTime.now, DateTime.now + 21)
  number_of_people = rand(1..6)
  status = Faker::Boolean.boolean #shouldn't status be a string variable? As we cannot 'destroy' it, only cancel it
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
