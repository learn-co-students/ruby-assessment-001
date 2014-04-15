module Level6
  # Create your Student class here
  class Student
  	attr_reader :name, :grade
  	def initialize(name, grade)
  		@name = name
  		@grade = grade
  	end
  end
end