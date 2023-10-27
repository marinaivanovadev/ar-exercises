require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
# 1. Create 3 more stores
Store.create(name: 'Surrey', annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
Store.create(name: 'Whistler', annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
Store.create(name: 'Yaletown', annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

# 2. Using the `where` class method, fetch stores that carry men's apparel
@mens_stores = Store.where(mens_apparel: true)

# 3. Loop through each of these stores and output their name and annual revenue
puts "Men's Apparel Stores:"
@mens_stores.each do |store|
  puts "- #{store.name} (annual_revenue: #{store.annual_revenue})"
end

# 4. Fetch stores that carry women's apparel and are generating less than $1M in annual revenue
@womens_stores_under_1m = Store.where("womens_apparel = ? AND annual_revenue < ?", true, 1000000)

# Output the information for these stores
puts "\nWomen's Apparel Stores with Annual Revenue < $1M:"
@womens_stores_under_1m.each do |store|
  puts "- #{store.name} (annual_revenue: #{store.annual_revenue})"
end
