require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

p "Total-sum: $#{Store.sum(:annual_revenue)}"
p "Average: $#{Store.average(:annual_revenue)}"

p "Stores with revenue > $1M: #{Store.where('annual_revenue > ?', 1000000).count}"