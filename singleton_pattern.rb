class SingletonPrinter
  private_class_method :new

  @instance = new

  def self.instance
    @instance
  end
end

S1 = SingletonPrinter.instance
S2 = SingletonPrinter.instance

if S1.equal?(S2)
  puts "S1, S2 are the one"
end