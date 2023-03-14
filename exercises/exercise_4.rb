require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

surrey = Store.create(name: "Surrey",  annual_revenue: 224000, mens_apparel: false, womens_apparel: true)

Whistler = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)

yaletown = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where(mens_apparel: true)

# loop is only outputting Calgary (changed from burnaby), Whistler and Yaletown. Gastown was deleted in previous exercise 
@mens_stores.all.each do |store|
  puts store.name
end

#womens appearal & less than $1M revenue
@womens_stores = Store.where(womens_apparel: true)

@womens_stores.all.each do |store|
  if store.annual_revenue < 1000000
  puts store.name
  end
end
