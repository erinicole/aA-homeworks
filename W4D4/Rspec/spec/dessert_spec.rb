require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }

  describe "#initialize" do
    subject(:test) {Dessert.new("type", 5, "chef") }
    it "sets a type" do
      expect(test.type).to eq("type")
    end


    it "sets a quantity" do
      expect(test.quantity). to eq(5)
    end

    it "starts ingredients as an empty array" do
      expect(test.ingredients).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do
      expect {Dessert.new("type", "five", "chef") }. to raise_error("Quantity must be a number")
    end

  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array"
  end

  describe "#mix!" do
    it "shuffles the ingredient array"
  end

  describe "#eat" do
    it "subtracts an amount from the quantity"

    it "raises an error if the amount is greater than the quantity"
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name"
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end
