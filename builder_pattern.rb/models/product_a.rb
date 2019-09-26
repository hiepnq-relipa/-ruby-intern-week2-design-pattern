class ProductA
  
  @@part_list = ['A.Part_1', 'A.Part_2', 'A.Part_3']
  
  def initialize
    @parts = []
  end

  def self.part_list
    @@part_list
  end

  def add (part)
    @parts << part
  end

  def list_parts
    "Product parts: #{@parts.join(', ')}"
  end
end
