module Level6
	# Copy your School class from level 5 here
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
			students.any? {|student| student.name == name }
		end

		def set_ranking(rank)
			@ranking = rank
		end

		def add_student(name, grade)
			students << Student.new(name, grade)
		end

		def remove_student(name)
			students.reject! { |student| student.name == name }
		end

		def find_student(name)
			students.find { |student| student.name == name }
		end
	end
end