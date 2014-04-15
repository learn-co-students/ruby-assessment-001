require 'spec_helper'

describe "Level 5" do
  describe "Object Orientation" do
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

    let(:school) do
      School.new('The Flatiron School', 'NYC', 1, students, instructors)
    end

    it "stores initialization values" do
      expect(school.name).to eq('The Flatiron School')
      expect(school.location).to eq('NYC')
      expect(school.ranking).to eq(1)
      expect(school.students).to eq(students)
      expect(school.instructors).to eq(instructors)
    end 

    it "creates different levels of access for properties" do
      school.name = "The new and improved Flatiron School"
      school.location = "Boston"
      school.instructors = "A local drunk"
      school.students = "Anyone who will listen"

      expect { school.ranking = "Over 9000" }.to raise_error(NoMethodError)
      expect(school.name).to eq("The new and improved Flatiron School")
      expect(school.location).to eq("Boston")
      expect(school.instructors).to eq("A local drunk")
      expect(school.students).to eq("Anyone who will listen")
    end

    it "updates rank through custom setter method" do
      school.set_ranking(5)
      expect(school.ranking).to eq(5)
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

    it "tracks all instances created" do
      expect(School.all).to include(school)
    end

    it "can clear a class value" do
      School.destroy_all
      expect(School.all).to be_empty
    end
  end
end
