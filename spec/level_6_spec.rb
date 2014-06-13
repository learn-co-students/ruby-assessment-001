require 'spec_helper'

module Level6
  describe "Level 6" do
    describe "Classes" do
      let(:instructors) do 
        [ 
          { name: "Blake",  subject: "Being Awesome" },
          { name: "Steven", subject: "Being Just 'OK'"},
          { name: "Jeff",   subject: "Karaoke"}
        ]
      end      
      
      let(:students) do
        [ 
          { name: "Marissa", grade: "B" },
          { name: "Billy",   grade: "F" },
          { name: "Frank",   grade: "A" },
          { name: "Sophie",  grade: "C" }
        ]
      end

      describe "Student" do
        it "is initialized with name and grade" do
          name = "Santiago Mitre"
          grade = "B"
          student = Student.new(name, grade)
          expect(student.name).to eq(name)
          expect(student.grade).to eq(grade)
        end
      end

      describe "School" do
        let(:students) do
          marissa = Student.new "Marissa",  "B" 
          billy   = Student.new "Billy",    "F" 
          frank   = Student.new "Frank",    "A" 
          sophie  = Student.new "Sophie",   "C" 
          
          [marissa, billy, frank, sophie]
        end

        let(:school) { School.new('The Flatiron School', 'NYC', 1, students, instructors) }
        
        it "takes an array of student objects instead of an array of hashes" do
          expect(school.students.first).to be_a(Student)
        end

        it "knows if a student is enrolled" do
          expect(school.student_enrolled?('Marissa')).to be_true
          expect(school.student_enrolled?('James Mason')).to be_false
        end

        it "adds students to school" do
          name = "Santiago Mitre"
          grade = "B"
          school.add_student(name, grade)
          expect(school.student_enrolled?(name)).to be_true
        end

        it "removes students from school" do
          school.remove_student('Frank')
          expect(school.student_enrolled?('Frank')).to be_false
        end 

        it "finds a student by name" do
          frank = school.find_student('Frank')
          expect(frank.name).to eq("Frank")
          expect(frank.grade).to eq("A")
        end
      end 
      
# c. Create a method in the School class that finds a student by name and returns the correct Student object.


    end
  end
end
