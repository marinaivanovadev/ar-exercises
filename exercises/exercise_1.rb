require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

class Stores
    # The initialize method is called when an object is created
  def initialize(name, annual_revenue, mens_apparel, womens_apparel)
    @name = name
    @annual_revenue = annual_revenue
    @mens_apparel = mens_apparel
    @womens_apparel = womens_apparel
  end

  def display_info
    apparel_info = if @mens_apparel && @womens_apparel
                    "carries men's and women's apparel"
                  elsif @womens_apparel
                    "carries women's apparel only"
                  elsif @mens_apparel
                    "carries men's apparel only"
                  else
                    "does not carry any apparel"
                  end

    puts "- #{@name} (annual_revenue of #{@annual_revenue}, #{apparel_info})"
  end
end
Store.create(name: 'Burnaby', annual_revenue: 300000, mens_apparel: true, womens_apparel: true)
Store.create(name: 'Richmond', annual_revenue: 1260000, mens_apparel: false, womens_apparel: true)
Store.create(name: 'Gastown', annual_revenue: 190000, mens_apparel: true, womens_apparel: false)


# Creating objects for each store
burnaby = Stores.new("Burnaby", 300000, true, true)
richmond = Stores.new("Richmond", 1260000, false, true)
gastown = Stores.new("Gastown", 190000, true, false)


# Calling a method on each object
burnaby.display_info
richmond.display_info
gastown.display_info

puts "Number of stores: #{Store.count}"
