require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...

# 1. Load the first store (with id = 1) and assign it to @store1
@store1 = Store.find(1)
puts "Original Store 1: #{Store.find(1).name}"
# 2. Load the second store from the database and assign it to @store2
@store2 = Store.find(2)
puts "Store 2: #{@store2.name}"
# 3. Update the first store (@store1) instance in the database (Change its name)

@store1.update(name: 'Nanaimo')

# Output the updated information
puts "Updated Store 1: #{@store1.name}"


