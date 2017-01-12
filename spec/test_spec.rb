require 'spec_helper'

describe 'Test' do
  before do
    @obj = Test.new(name: 'Yaman')
  end

  describe "return message" do
    it "it must return this message" do
      expect(@obj.output).to eq "Hi, My name is Yaman"
    end
  end
end
