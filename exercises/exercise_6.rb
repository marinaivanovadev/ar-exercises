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

@store1.employees.create(first_name: "Marina", last_name: "Ivanova", hourly_rate: 50)
@store1.employees.create(first_name: "Denis", last_name: "Khrustalev", hourly_rate: 60)

@store2.employees.create(first_name: "Polina", last_name: "Khrustaleva", hourly_rate: 65)
@store2.employees.create(first_name: "Roman", last_name: "Khrustalev", hourly_rate: 55)

@store1.employees.each do |employee|
  puts "Employee: #{employee.first_name} #{employee.last_name}, Hourly Rate: $#{employee.hourly_rate}"
end
@store2.employees.each do |employee|
  puts "Employee: #{employee.first_name} #{employee.last_name}, Hourly Rate: $#{employee.hourly_rate}"
end
