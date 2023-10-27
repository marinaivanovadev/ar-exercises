require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...
# 1. Load the third store (with id = 3) and assign it to @store3
@store3 = Store.find(3)

# 2. Using Active Record's destroy method, delete the store from the database
@store3.destroy

# 3. Verify that the store has been deleted by outputting (`puts`ing) the `count`
puts "Number of stores after deletion: #{Store.count}"
