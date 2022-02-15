# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

st_john = Parish.create(name: 'St. John the Evangelist', phone_number: '3174852003')
st_jude = Parish.create(name: 'St. Jude', phone_number: '3175493044')
st_roch = Parish.create(name: 'St. Roch', phone_number: '3174495045')
st_louis = Parish.create(name: 'St. Louis de Montfort', phone_number: '3176960549')

pass = 'Test1234!'

timmy = User.create(email: 'timmy@test.com', password: pass, password_confirmation: pass, confirmed_at: Time.now)
tommy = User.create(email: 'tommy@test.com', password: pass, password_confirmation: pass, confirmed_at: Time.now)
tammy = User.create(email: 'tammy@test.com', password: pass, password_confirmation: pass, confirmed_at: Time.now)
pammy = User.create(email: 'pammy@test.com', password: pass, password_confirmation: pass, confirmed_at: Time.now)

Registration.create(user: timmy, parish: st_jude, admin: false, registered: true)
Registration.create(user: tommy, parish: st_john, admin: false, registered: true)
Registration.create(user: tammy, parish: st_john, admin: true, registered: true)
Registration.create(user: tammy, parish: st_louis, admin: false, registered: false)
Registration.create(user: pammy, parish: st_roch, admin: false, registered: true)

shc = 'Sacred Heart Chapel'
mc = 'Main Church'

(0..6).each do |day|
  (0..23).each do |hour|
    TimeSlot.create(hour: hour, day: day, location: shc, parish: st_john, minimum: 2)
    TimeSlot.create(hour: hour, day: day, location: mc, parish: st_roch, minimum: 2)
  end
end
