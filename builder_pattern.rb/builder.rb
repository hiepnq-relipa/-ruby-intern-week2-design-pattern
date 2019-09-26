require_relative 'models/product_a'

module Builder
  class Abstract
    
    def produce_part_1
      raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
    end

    def produce_part_2
      raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
    end

    def produce_part_3
      raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
    end
  end

  class ConcreteA < Abstract
    attr_reader :product

    def initialize
      reset
    end

    def product
      product = @product
      reset
      product
    end

    def reset
      @product = ProductA.new
    end

    def produce_part_1
      @product.add(ProductA.part_list[0])
    end

    def produce_part_2
      @product.add(ProductA.part_list[1])
    end

    def produce_part_3
      @product.add(ProductA.part_list[2])
    end
  end
end