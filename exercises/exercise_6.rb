require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Store < ActiveRecord::Base
  has_many :employees
end

class Employee < ActiveRecord::Base
  belongs_to :store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "JON", last_name: "BON", hourly_rate: 600)
@store1.employees.create(first_name: "GUY", last_name: "SON", hourly_rate: 30)

@store2.employees.create(first_name: "Hey", last_name: "Vi", hourly_rate: 60)
@store2.employees.create(first_name: "HHU", last_name: "BUI", hourly_rate: 600)
@store2.employees.create(first_name: "BUN", last_name: "SSUN", hourly_rate: 30)