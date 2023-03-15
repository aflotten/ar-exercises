require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Theo", last_name: "Hack", hourly_rate: 71)
@store1.employees.create(first_name: "Bruss", last_name: "Mann", hourly_rate: 3000)
@store1.employees.create(first_name: "Me", last_name: "Myself", hourly_rate: 30)
@store2.employees.create(first_name: "John", last_name: "Doe", hourly_rate: 40)
@store2.employees.create(first_name: "Jane", last_name: "Doe", hourly_rate: 25)
@store2.employees.create(first_name: "Billy", last_name: "Style", hourly_rate: 50)


