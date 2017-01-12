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

# Test.new(name: 'Yaman').print

require 'minitest/autorun'

class Tests < MiniTest::Test
  def test_example_input
    assert_equal 'Hi, My name is Yaman', Test.new(name: 'Yaman').output
  end
end

describe Test do
  before do
    @obj = Test.new(name: 'Yaman')
  end

  describe "return message" do
    it "it must return this message" do
      # expect(@obj.output).to eq "Hi, My name is Yaman"
      @obj.output.must_equal "Hi, My name is Yaman"
    end
  end

  # describe "when asked about blending possibilities" do
  #   it "won't say no" do
  #     @meme.will_it_blend?.wont_match /^no/i
  #   end
  # end
end
