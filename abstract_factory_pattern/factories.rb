require_relative './models/product_a'
require_relative './models/product_b'

module Factory
  class Abstract
    def create_product_a
      raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
    end

    def create_product_b
      raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
    end
  end

  class Concrete1 < Abstract
    def create_product_a
      ProductA::Concrete1.new
    end

    def create_product_b
      ProductB::Concrete1.new
    end
  end

  class Concrete2 < Abstract
    def create_product_a
      ProductA::Concrete2.new
    end

    def create_product_b
      ProductB::Concrete2.new
    end
  end
end