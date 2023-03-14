require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

puts "----TOTAL REVENUE----"
@total_revenue = Store.sum(:annual_revenue)
puts @total_revenue #4114000

puts "----Average Revenue----"
@average_revenue = @total_revenue/Store.count
puts @average_revenue #822800

puts "Count of stores with a million or more in rev"
puts Store.where("annual_revenue > 1000000").count.to_s
