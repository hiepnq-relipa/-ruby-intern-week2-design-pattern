class Prototype
  attr_accessor :primitive, :component, :circular_reference

  def clone
    Marshal.load(Marshal.dump(self))
    # This will be deep clone
  end
  
end