# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
[
  {email: 'l.touch@cl-cam.com', password: '!@#$%^&*()', password_confirmation:'!@#$%^&*()', username: 'admin'},
  {email: 'lytaytouch@gmail.com', password: '!@#$%^&*()', password_confirmation:'!@#$%^&*()', username: 'gmail'},
  {email: 'lytaytouch@yahoo.com', password: '!@#$%^&*()', password_confirmation:'!@#$%^&*()', username: 'yahoo'},
  {email: 'lytaytouch@hotmail.com', password: '!@#$%^&*()', password_confirmation:'!@#$%^&*()', username: 'hotmail'}
].each do |admin|
  Administrator.create_with(email: admin[:email], password: admin[:password], password_confirmation: admin[:password_confirmation], username: admin[:username] ).find_or_create_by(email: admin[:email])
end