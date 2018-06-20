require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
class Store < ActiveRecord::Base
  validates_length_of :name, :minimum => 3
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0 }
end

class Employee < ActiveRecord::Base
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_inclusion_of :hourly_rate, :in => 40..200
  validates_presence_of :store_id
end

puts "Please enter a store name"
print "> "
storeName = $stdin.gets.chomp
newStore = Store.new(:name => "#{storeName}")
newStore.save
puts( newStore.errors.messages.map{ |key,value| "#{key} => #{value}" } )
