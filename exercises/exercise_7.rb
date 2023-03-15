require_relative '../setup'
# require_relative './exercise_1'
# require_relative './exercise_2'
# require_relative './exercise_3'
# require_relative './exercise_4'
# require_relative './exercise_5'
# require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

puts "Please set a name for the store"
print "> "
ans_name = gets.chomp.to_s

# puts "Please set annual revenue for the store"
# print "> "
# ans_rev = gets.chomp.to_i

# puts "Does the store carry mens clothing? true or false"
# print "> "
# ans_mens_apparel = gets.chomp

# puts "Does the store carry womens clothing? true or false"
# print "> "
# ans_womens_apparel = gets.chomp


@new_store = Store.create(name: ans_name)

puts "Is this input valid?" + @new_store.valid?.to_s
puts "ERROR MESSAGE BELOW"
puts "Errors surrounding name: " + @new_store.errors.details[:name].to_s
puts "Errors surrounding revenue: " + @new_store.errors.details[:annual_revenue].to_s
puts "Errors surrounding apparel: " + @new_store.errors.details[:womens_apparel].to_s



# @employee = Employee.create(first_name: "Khurram", last_name: "", hourly_rate: 60)

# puts @employee.valid?
# puts @employee.errors.full_messages
