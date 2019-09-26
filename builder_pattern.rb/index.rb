require_relative './director'
require_relative './builder'

director = Director.new
product_a_builder = Builder::ConcreteA.new
# set builder for director
director.builder = product_a_builder

puts "Guide line: parts should be built by the specific order, like PartA first, PartB second, PartC third"

# mutate builder in director also mutate product_a_builder, they are assigned the same object address.
puts 'Standard basic product: '
director.build_minimal_viable_product 
puts product_a_builder.product.list_parts # after do this, should reset @product of product_a_builder

puts "\n\n"

puts 'Standard full featured product: '
director.build_full_feature_product # should add full parts to product
puts product_a_builder.product.list_parts # expect PartA1, PartB1, PartC1, and reset @product of product_a_builder

puts "\n\n"

# Remember, the builder pattern can be used without a Director class
puts 'Custom product: '
product_a_builder.produce_part_1
product_a_builder.produce_part_2
puts product_a_builder.product.list_parts