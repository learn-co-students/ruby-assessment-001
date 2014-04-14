require 'spec_helper'

describe "Level 2" do
  describe "Hashes" do
    it "adds a new key" do
      instructor = {name: "Steven", age: 30}
      instructor[:location] = "NYC"
      expect(instructor[:location]).to eq("NYC")
    end

    it "prints out all the key value pairs in the hash" do
      instructor = {name: "Steven", age: 30}
      expect(STDOUT).to receive(:puts).with("Key is name. Value is Steven")
      expect(STDOUT).to receive(:puts).with("Key is age. Value is 30")
      instructor.each do |k,v|
        puts "Key is #{k}. Value is #{v}"
      end
    end

    it "returns a value from the hash" do
      instructor = {name: "Steven", age: 30}
      name = instructor[:name]
      expect(name).to eq("Steven")
    end

    it "finds a key from a known value" do
       instructor = {name: "Steven", age: 30}
       key_from_value = instructor.key(30)
       expect(key_from_value).to eq(:age)
    end
  end
end
