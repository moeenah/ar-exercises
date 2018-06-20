require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
surreyStore = Store.new(:name => "Surrey", :annual_revenue => 224000, :mens_apparel => false, :womens_apparel => true)
surreyStore.save

whistlerStore = Store.new(:name => "Whistler", :annual_revenue => 1900000, :mens_apparel => true, :womens_apparel => false)
whistlerStore.save

yaletownStore = Store.new(:name => "Yaletown", :annual_revenue => 430000, :mens_apparel => true, :womens_apparel => true)
yaletownStore.save

@mens_stores = Store.where(:mens_apparel => true)

@mens_stores.each do |result|
  puts "Store: #{result.name} & Revenue: #{result.annual_revenue}"
end

@womens_stores = Store.where(:womens_apparel => true).where('annual_revenue > ?', 1000000)

@womens_stores.each do |result|
  puts "Store: #{result.name} & Revenue: #{result.annual_revenue}"
end

