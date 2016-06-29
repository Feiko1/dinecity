
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create!([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create!(name: 'Emanuel', city: cities.first)


User.destroy_all
Restaurant.destroy_all
Photo.destroy_all
Deal.destroy_all
Booking.destroy_all
Review.destroy_all
Course.destroy_all

# User Seeds

# 10.times do
#   first_name = Faker::Name.first_name
#   last_name = Faker::Name.last_name
#   email = Faker::Internet.email
#   password = 'password'
#   kind = "user"  #default is (regular) 'user'
#   user = User.create!(first_name: first_name,
#     last_name: last_name,
#     email: email,
#     password: password,
#     kind: kind)
#   user.save
# end

User.create!(
  first_name: "Thomas",
  last_name: "Wilkinson",
  email: "T.Wilkinson@gmail.com",
  password: "password",
  kind: "user"
  )

User.create!(
  first_name: "Ryan",
  last_name: "James",
  email: "R.james@gmail.com",
  password: "password",
  kind: "user"
  )

User.create!(
  first_name: "Frans",
  last_name: "van Camp",
  email: "F.camp@gmail.com",
  password: "password",
  kind: "user"
  )


owner = User.create!(
  first_name: "Nicole",
  last_name: "Saidy",
  email: "N.saidy@gmail.com",
  password: "password",
  kind: "owner"
  )

# Restaurant Seeds


Restaurant.create!(
  name: "Bo Cinq",
  phone_number: "020 6220682",
  street_name: "Prinsengracht",
  street_number: 494,
  city_name: "Amsterdam",
  country_name: "The Netherlands",
  postal_code: "1017 KH",
  email_address: "info@bocinq.nl",
  user_id: owner.id,
  category: :lovers,
  cuisine: :french
  )

Restaurant.create!(
  name: "Bo Cinq",
  phone_number: "020 6220682",
  street_name: "Prinsengracht",
  street_number: 494,
  city_name: "Amsterdam",
  country_name: "The Netherlands",
  postal_code: "1017 KH",
  email_address: "info@bocinq.nl",
  user_id: owner.id,
  category: :lovers,
  cuisine: :french
  )

Restaurant.create!(
  name: "Wink",
  phone_number: "020 7526243",
  street_name: "Govert Flinckstraat",
  street_number: 326,
  city_name: "Amsterdam",
  country_name: "The Netherlands",
  postal_code: "1073 CJ",
  email_address: "info@wink.nl",
  user_id: owner.id,
  category: :lovers,
  cuisine: :french
  )

Restaurant.create!(
  name: "Le Petit Latin",
  phone_number: "020 6249425",
  street_name: "Nieuwezijds Voorburgwal",
  street_number: 306,
  city_name: "Amsterdam",
  country_name: "The Netherlands",
  postal_code: "1012 RV",
  email_address: "info@restaurantlepetitlatin.nl",
  user_id: owner.id,
  category: :lovers,
  cuisine: :french
  )

Restaurant.create!(
  name: "Envy",
  phone_number: "020 203446407",
  street_name: "Prinsengracht",
  street_number: 381,
  city_name: "Amsterdam",
  country_name: "The Netherlands",
  postal_code: "1016 HL",
  email_address: "info@envy.nl",
  user_id: owner.id,
  category: :lovers,
  cuisine: :french
  )

Restaurant.create!(
  name: "Ron Gastrobar",
  phone_number: "020 4961943",
  street_name: "Sophialaan",
  street_number: 55,
  city_name: "Amsterdam",
  country_name: "The Netherlands",
  postal_code: "1075 BP",
  email_address: "info@rongastrobar.nl",
  user_id: owner.id,
  category: :lovers,
  cuisine: :french
  )

Restaurant.create!(
  name: "Le Restaurant",
  phone_number: "020 3792207",
  street_name: "Tweede Jan Steenstraat",
  street_number: 3,
  city_name: "Amsterdam",
  country_name: "The Netherlands",
  postal_code: "1073 VK",
  email_address: "info@lerestaurant.nl",
  user_id: owner.id,
  category: :lovers,
  cuisine: :french
  )


Restaurant.create!(
  name: "Johannes",
  phone_number: "020 6269503",
  street_name: "Herengracht",
  street_number: 413,
  city_name: "Amsterdam",
  country_name: "The Netherlands",
  postal_code: "1017 BP",
  email_address: "info@restaurantjohannes.nl",
  user_id: owner.id,
  category: :lovers,
  cuisine: :french
  )

Restaurant.create!(
  name: "Restaurant Juuls",
  phone_number: "020 4710711",
  street_name: "Albert Cuypstraat",
  street_number: 19,
  city_name: "Amsterdam",
  country_name: "The Netherlands",
  postal_code: "1072 CK",
  email_address: "info@restaurantjuuls.nl",
  user_id: owner.id,
  category: :family,
  cuisine: :french
  )

Restaurant.create!(
  name: "Lastage",
  phone_number: "020 7370811",
  street_name: "Geldersekade",
  street_number: 29,
  city_name: "Amsterdam",
  country_name: "The Netherlands",
  postal_code: "1011 EJ",
  email_address: "info@restaurantlastage.nl",
  user_id: owner.id,
  category: :family,
  cuisine: :french
  )

Restaurant.create!(
  name: "Restaurant C",
  phone_number: "020 2103011",
  street_name: "Wibautstraat",
  street_number: 125,
  city_name: "Amsterdam",
  country_name: "The Netherlands",
  postal_code: "1091 GL",
  email_address: "info@c.amsterdam.nl",
  user_id: owner.id,
  category: :family,
  cuisine: :french
  )

Restaurant.create!(
  name: "HappyHappyJoyJoy",
  phone_number: "020 3446433",
  street_name: "Bilderdijkstraat",
  street_number: 158,
  city_name: "Amsterdam",
  country_name: "The Netherlands",
  postal_code: "1053 LC",
  email_address: "west@happyhappyjoyjoy.asia",
  user_id: owner.id,
  category: :family,
  cuisine: :french
  )

Restaurant.create!(
  name: "Pompstation",
  phone_number: "020 6922888",
  street_name: "Zeeburgerdijk",
  street_number: 52,
  city_name: "Amsterdam",
  country_name: "The Netherlands",
  postal_code: "1094 AE",
  email_address: "info@pompstation.nu",
  user_id: owner.id,
  category: :family,
  cuisine: :french
  )

Restaurant.create!(
  name: "Goudfazant",
  phone_number: "020 6365170",
  street_name: "Aambeeldstraat",
  street_number: 10,
  city_name: "Amsterdam",
  country_name: "The Netherlands",
  postal_code: "1021 KB",
  email_address: "info@hoteldegoudfazant.nl",
  user_id: owner.id,
  category: :family,
  cuisine: :french
  )

Restaurant.create!(
  name: "De Kas",
  phone_number: "020 4624562",
  street_name: "Kamerlingh Onneslaan",
  street_number: 3,
  city_name: "Amsterdam",
  country_name: "The Netherlands",
  postal_code: "1097 DE",
  email_address: "info@restaurantdekas.nl",
  user_id: owner.id,
  category: :family,
  cuisine: :french
  )

Restaurant.create!(
  name: "En Pluche",
  phone_number: "020 4714695",
  street_name: "Ruysdaelstraat",
  street_number: 50,
  city_name: "Amsterdam",
  country_name: "The Netherlands",
  postal_code: "1071 XE",
  email_address: "info@enpluche.nl",
  user_id: owner.id,
  category: :family,
  cuisine: :french
  )

puts "Just created the restaurants"

description_array = ["Experience Menu", "Chef's Menu", "Try-Out Menu"]


Restaurant.all.each do |resto|
  deal = Deal.create!(
    name: description_array.sample,
    description: Faker::Lorem.words(4),
    start_date: Faker::Date.backward(14),
    end_date: Faker::Date.forward(23),
    status: Faker::Boolean.boolean,
    discount_kind: "discount",
    price: rand(25,35,45),
    maximum_deal_capacity: rand(1..40),
    monday: Faker::Boolean.boolean,
    tuesday: Faker::Boolean.boolean,
    wednesday: Faker::Boolean.boolean,
    thursday: Faker::Boolean.boolean,
    friday: Faker::Boolean.boolean,
    saturday: Faker::Boolean.boolean,
    sunday: Faker::Boolean.boolean,
    restaurant_id: resto.id
    )

  course_name = "starter"
  description = "Mushroom soup with french cheese"

  course = Course.create!(
  deal: deal,
  course_name: course_name,
  description: description)


  course_name = "main"
  description = "Rack of lamb herb crusted with season veggies"

  course = Course.create!(
  deal: deal,
  course_name: course_name,
  description: description)


  course_name = "desert"
  description = "Semi-froddo chocolate cake"

  course = Course.create!(
  deal: deal,
  course_name: course_name,
  description: description)




end

puts "Just created the deals"


#   10.times do
#   user_instance = User.where(kind: 'user').sample

#   user_id = user_instance.id
#   deal_id = (Deal.all.sample).id
#   date = Faker::Time.between(DateTime.now, DateTime.now + 21)
#   number_of_people = rand(2..5)
#   status = "booking_requested_by_user" #shouldn't status be a string variable? As we cannot 'destroy' it, only cancel it
#   visitor_first_name = user_instance.first_name
#   visitor_last_name = user_instance.last_name
#   visitor_email = user_instance.email
#   visitor_phone = Faker::PhoneNumber.phone_number

#   booking = Booking.create!(
#     user_id: user_id,
#     deal_id: deal_id,
#     date: date,
#     number_of_people: number_of_people,
#     status: status,
#     visitor_first_name: visitor_first_name,
#     visitor_last_name: visitor_last_name,
#     visitor_email: visitor_email,
#     visitor_phone: visitor_phone)

# end

# 30.times do
#   name = Faker::Lorem.word
#   user_id = (User.all.sample).id
#   phone_number = Faker::PhoneNumber.phone_number
#   street_name = Faker::Address.street_name
#   street_number = Faker::Address.building_number
#   city_name = Faker::Address.city
#   country_name = Faker::Address.country
#   postal_code = Faker::Address.postcode
#   email_address = Faker::Internet.email

#   restaurant = Restaurant.create!(name: name,
#     phone_number: phone_number,
#     street_name: street_name,
#     street_number: street_number,
#     city_name: city_name,
#     country_name: country_name,
#     postal_code: postal_code,
#     email_address: email_address,
#     user_id: user_id
#     )
#   restaurant.save


# Review seeds

# Review.create!(
#   content: "The 12restaurants experience menu was delicious.
#   Service was fine but we could not eat outside.
#   Will definetly visit again because there were many tasty dishes on the menu.",
#   rating: 4,


#   )

  # 3.times do

  #   content = Faker::Lorem.paragraph
  #   rating = rand(1..5)
  #   review = Review.new
  #   review.restaurant = restaurant
  #   review.user       = User.last(10).sample
  #   review.content    = content
  #   review.rating     = rating
  #   review.save
  # end

  # Deal seeds

  # name = Faker::Company.buzzword
  # description = Faker::Lorem.words(4)
  # start_date = Faker::Date.backward(14)
  # end_date = Faker::Date.forward(23)
  # status = Faker::Boolean.boolean
  # discount_kind = "discount"
  # price = rand(1..60)
  # maximum_deal_capacity = rand(1..40)
  # monday = Faker::Boolean.boolean
  # tuesday = Faker::Boolean.boolean
  # wednesday = Faker::Boolean.boolean
  # thursday = Faker::Boolean.boolean
  # friday = Faker::Boolean.boolean
  # saturday = Faker::Boolean.boolean
  # sunday = Faker::Boolean.boolean

#   deal = Deal.create!(name: name,
#     description: description,
#     start_date: start_date,
#     end_date: end_date,
#     status: status,
#     discount_kind: discount_kind,
#     price: price,
#     maximum_deal_capacity: maximum_deal_capacity,
#     monday: monday,
#     tuesday: tuesday,
#     wednesday: wednesday,
#     thursday: thursday,
#     friday: friday,
#     saturday: saturday,
#     sunday: sunday,
#     restaurant: restaurant)
#   deal.save
#   1.times do

  #   course_name = "starter"
  #   description = Faker::Lorem.sentence(4)

  #   course = Course.new
  #   course.deal       = deal
  #   course.course_name = course_name
  #   course.description    = description
  #   course.save
  # end

  # 1.times do

  #     course_name = "main"
  #   description = Faker::Lorem.words(4)

  #   course = Course.new
  #   course.deal       = deal
  #   course.course_name = course_name
  #   course.description    = description
  #   course.save
  # end

  # 1.times do

  #   course_name = "desert"
  #   description = Faker::Lorem.words(4)

  #   course = Course.new
  #   course.deal       = deal
  #   course.course_name = course_name
  #   course.description    = description
  #   course.save
#   end
# end

# 30.times do
#   image_string = Faker::Avatar.image
#   restaurant_id = (Restaurant.all.sample).id
#   photo = Photo.create!(image_string: image_string,
#     restaurant_id: restaurant_id
#     )
#   photo.save
# end



# 15.times do
#   user_instance = (User.all.sample)  #

#   user_id = user_instance.id
#   deal_id = (Deal.all.sample).id
#   date = Faker::Time.between(DateTime.now, DateTime.now + 21)
#   number_of_people = rand(1..6)
#   status = "booking_requested_by_user" #shouldn't status be a string variable? As we cannot 'destroy' it, only cancel it
#   visitor_first_name = user_instance.first_name
#   visitor_last_name = user_instance.last_name
#   visitor_email = user_instance.email
#   visitor_phone = Faker::PhoneNumber.phone_number

#   booking = Booking.create!(
#     user_id: user_id,
#     deal_id: deal_id,
#     date: date,
#     number_of_people: number_of_people,
#     status: status,
#     visitor_first_name: visitor_first_name,
#     visitor_last_name: visitor_last_name,
#     visitor_email: visitor_email,
#     visitor_phone: visitor_phone)
#   booking.save
# end


# 30.times do
#   restaurant_instance = (Restaurant.all.sample)  #
#   restaurant_id = restaurant_instance.id
#   content = Faker::Lorem.sentence

#   review = Review.create!(
#     restaurant_id: restaurant_id,
#     content: content)
#   review.save
# end

