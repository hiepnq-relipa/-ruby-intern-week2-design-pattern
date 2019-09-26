
module ProductB
  class Abstract
    def useful_function_b
      raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
    end

    def another_useful_function_b(_collaborator)
      raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
    end
  end

  class Concrete1 < Abstract
    def useful_function_b
      'The result of the product B1.'
    end

    def another_useful_function_b(collaborator)
      result = collaborator.useful_function_a
      "The result of B1 collaborating with the (#{result})"
    end
  end

  class Concrete2 < Abstract
    def useful_function_b
      'The result of the product B2.'
    end

    def another_useful_function_b(collaborator)
      result = collaborator.useful_function_a
      "The result of the B2 collaborating with the (#{result})"
    end
  end
end