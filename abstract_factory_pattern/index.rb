require_relative './factories'

def client_code(factory)
  product_a = factory.create_product_a
  product_b = factory.create_product_b

  puts product_b.useful_function_b
  puts product_b.another_useful_function_b(product_a)
end

puts 'Client: Testing client code with the first factory type:'
client_code(Factory::Concrete1.new)

puts "\n"

puts 'Client: Testing the same client code with the second factory type.'
client_code(Factory::Concrete2.new)