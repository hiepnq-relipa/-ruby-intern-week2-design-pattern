
module ProductA
  class Abstract   
    # Abstract
    def useful_function_a
      raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
    end
  end

  class Concrete1 < Abstract

    def useful_function_a
      'the result of the product A1.'
    end
  end

  class Concrete2 < Abstract

    def useful_function_a
      'The result of the product A2.'
    end
  end
end