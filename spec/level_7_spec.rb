describe "Level 7" do
	describe "self" do
		it "returns a value from a class method" do
			# Define a class with a class method that returns self
			class Student
				def self.return_self
					self
				end
			end

			found_self = Student.return_self
			# Fill in the blank
			expect(found_self).to eq(Student)
		end 

		it "returns self from body of the class" do
			$found_self = nil

			class Student 
				$found_self = self
			end
			# Fill in the blank
			expect($found_self).to eq(Student)
		end

		it "returns self from an instance method" do
			class Student
				def return_self
					self
				end
			end

			student = Student.new
			# Fill in the blank
			expect(student.return_self).to be_a Student
		end
	end
end
