module Level5
	class School
	@@schools = []
	attr_accessor :name, :location, :students, :instructors
	attr_reader :ranking
	
	def self.destroy_all
		@@schools.clear
	end

	def self.all
		@@schools
	end

	def initialize(name, location, ranking, students, instructors)
		@name = name
		@location = location
		@ranking = ranking
		@students = students
		@instructors = instructors
		@@schools << self
	end

	def student_enrolled?(name)
		students.any? {|student| student[:name] == name }
	end

	def set_ranking(rank)
		@ranking = rank
	end

	def add_student(name, grade)
		students << { name: name, grade: grade }
	end

	def remove_student(name)
		students.reject! { |student| student[:name] == name }
	end
end
end