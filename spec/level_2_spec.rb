require 'spec_helper'

describe "Level 2" do
  describe "Hashes" do
    it "adds a new key" do
      instructor = {name: "Steven", age: 30}
      # Add a key :location with a value of "NYC" to instructor
      expect(instructor[:location]).to eq("NYC")
    end

    it "prints out all the key value pairs in the hash" do
      instructor = {name: "Steven", age: 30}
      expect(STDOUT).to receive(:puts).with("Key is name. Value is Steven")
      expect(STDOUT).to receive(:puts).with("Key is age. Value is 30")
      # Iterate over the hash and print each key value pair. 
      # Print using string interpolation to match the expectations.
    end

    it "returns a value from the hash" do
      instructor = {name: "Steven", age: 30}
      name = :banana # extract name value from the hash
      expect(name).to eq("Steven")
    end

    it "finds a key from a known value" do
       instructor = {name: "Steven", age: 30}
       key_from_value = :banana # write code that finds a key where the value is 30
       expect(key_from_value).to eq(:age)
    end
  end
end
