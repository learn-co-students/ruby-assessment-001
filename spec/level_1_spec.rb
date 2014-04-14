require 'spec_helper'

describe "Level 1" do
	describe "Arrays" do
		it "adds an element to an array" do 
			array = ["Blake","Steven","Jeff"]
  		# add an element to the array
		  array << "Steven"
			expect(array.count).to eq(4)
		end

		it "prints each element in the array" do
			array = ["Blake","Steven","Jeff"]
			expect(STDOUT).to receive(:puts).with("Blake")
			expect(STDOUT).to receive(:puts).with("Steven")
			expect(STDOUT).to receive(:puts).with("Jeff")
			# iterate over each element in the array and puts it
			array.each do |teacher|
				puts teacher
			end
		end

		it "returns the value at index 1" do
			array = ["Blake","Ashley","Jeff"]
			element_1 = array.first

			expect(element_1).to eq("Blake") 
		end

		it "returns the user at an index" do

			array = ["Blake","Steven","Jeff"]
			jeff_index = array.index('Jeff')
			expect(jeff_index).to eq(2)
		end
	end
end
