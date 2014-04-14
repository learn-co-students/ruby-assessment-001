require 'spec_helper'

describe Level1 do
	describe "Arrays" do
		it "adds an element to an array" do 
			array = ["Blake","Ashley","Jeff"]
  		# add an element to the array
			expect(array.count).to eq(4)
		end

		it "prints each element in the array" do
			array = ["Blake","Ashley","Jeff"]
			expect(STDOUT).to receive(:puts).with("Blake")
			expect(STDOUT).to receive(:puts).with("Ashley")
			expect(STDOUT).to receive(:puts).with("Jeff")

			# iterate over each element in the array and puts it
		end

		it "returns the value at index 1" do
			array = ["Blake","Ashley","Jeff"]
			element_1 = :banana # replace banana with the code that finds the first element
			expect(element_1).to eq("Blake") 
		end

		it "returns the user at an index" do
			array = ["Blake","Ashley","Jeff"]
			jeff_index = :banana # replace banana with the code that finds Jeff's index
			expect(jeff_index).to eq(2)
		end
	end
end
