# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Customer.delete_all

Customer.create(firstname: "Johny", lastname: "Flow")
Customer.create(firstname: "Raj", lastname: "Jamnis")
Customer.create(firstname: "Andrew", lastname: "Chung")
Customer.create(firstname: "Mike", lastname: "Smith")

customers = Customer.all

Charge.delete_all

5.times do |i|
  Charge.create(created: i.days.ago.to_i, amount: rand(500..1000), paid: true, currency: "usd", refunded: false, customer_id: customers[0].id)  
end 

3.times do |i|
  Charge.create(created: i.days.ago.to_i, amount: rand(500..2000), paid: true, currency: "usd", refunded: false, customer: customers[1].id )
end

  Charge.create(created: 1.day.ago.to_i, amount: rand(300..30000), paid: true, currency: "usd", refunded: false, customer: customers[2].id)
  Charge.create(created: 2.days.ago.to_i, amount: rand(500..30000), paid: true, currency: "usd", refunded: false, customer: customers[3].id)

3.times do |i|
  Charge.create(created: i.day.ago.to_i, amount: rand(30..200), paid: false, currency: "usd", refunded: false, customer: customers[3].id)  
end

2.times do |i|
  Charge.create(created: i.day.ago.to_i, amount: rand(150..2000), paid: false, currency: "usd", refunded: false, customer:customers[4].id)
end
3.times do |i|
  Charge.create(created: i.day.ago.to_i, amount: rand(30..200), paid: true, currency: "usd", refunded: true, customer:customers[1].id)
end
2.times do |i|
  Charge.create(created: i.day.ago.to_i, amount: rand(300..1200), paid: true, currency: "usd", refunded: true, customer:customers[2].id)
end


