

class Director
  attr_accessor :builder

  def build_minimal_viable_product
    @builder.produce_part_1
  end

  def build_full_feature_product
    @builder.produce_part_1
    @builder.produce_part_2
    @builder.produce_part_3
  end
end