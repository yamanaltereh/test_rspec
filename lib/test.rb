class Test
  attr_accessor :name

  def initialize(args)
    @name = args[:name]
  end

  def print
    puts self.output
  end

  def output
    "Hi, My name is #{@name}"
  end
end
