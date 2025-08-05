# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# ActiveRecord::Base.transaction do
#   1000.times do |i|
#     user = User.create(
#       first_name:       Faker::Name.first_name,
#       last_name:        Faker::Name.last_name,
#       username:         "#{Faker::Name.first_name.downcase}_#{i + 10}",
#       email:            Faker::Internet.email,
#       contact_number:   Faker::PhoneNumber.phone_number_with_country_code,
#       street_address:   Faker::Address.street_address,
#       city:             Faker::Address.city,
#       state:            Faker::Address.state,
#       country:          Faker::Address.country,
#       pincode:          Faker::Address.postcode,  # ✅ Fixed this line
#       date_of_birth:    Date.today - rand(20..30).years + rand(1..30).days,
#       profile_title:    User::PROFILE_TITLE.sample,
#       password:         'password',
#       about:            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s..."
#     )
#     puts "User #{i + 1} created successfully" if user.persisted?
#   end
# end

    user = User.create(
      first_name:       Faker::Name.first_name,
      last_name:        Faker::Name.last_name,
      username:         "bisen023",
      email:            "bisen2310@gmail.com",
      contact_number:   Faker::PhoneNumber.phone_number_with_country_code,
      street_address:   Faker::Address.street_address,
      city:             Faker::Address.city,
      state:            Faker::Address.state,
      country:          Faker::Address.country,
      pincode:          Faker::Address.postcode,  # ✅ Fixed this line
      date_of_birth:    Date.today - rand(20..30).years + rand(1..30).days,
      profile_title:    User::PROFILE_TITLE.sample,
      password:         'password',
      about:            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s..."
    )