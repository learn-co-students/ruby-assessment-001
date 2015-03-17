describe "Level 4" do
  describe "Methods" do
    # For this assignment create a file in the lib directory.
    # Create the methods the tests are asking for
    let(:school) do 
      # Using let makes a value named school available in all of the tests.
      # This hash will reset at the beginning of each test.
      { 
        :name => "Happy Funtime School",
        :location => "NYC",
        :instructors => [ 
          {:name=>"Blake", :subject=>"Being Awesome" },
          {:name=>"Steven", :subject=>"Being Just 'OK'"},
          {:name=>"Jeff", :subject=>"Karaoke"}
        ],
        :students => [ 
          {:name => "Marissa", :grade => "B"},
          {:name=>"Billy", :grade => "F"},
          {:name => "Frank", :grade => "A"},
          {:name => "Sophie", :grade => "C"}
        ]
      }
    end

    it "returns a student grade by name" do
      begin
        expect(grade_for("Marissa", school)).to eq("B")
      rescue NoMethodError
        abort "You have to define a grade_for method in lib/level4.rb"
      end
    end

    describe "#find_instructor"
      it "can find instructor when given the instructor's name and school hash" do
        blake = find_instructor("Blake", school)
        expect(blake[:subject]).to eq("Being Amazing")
      end
    end
   
    it "updates an instructor's subject" do
      update_subject_for("Blake", "Being Amazing", school)
      blake = find_instructor("Blake", school)
      expect(blake[:subject]).to eq("Being Amazing")
    end
    
    it "adds new student to hash" do
      add_student("Santiago Mitre", "A", school)
      santiago = find_student("Santiago Mitre", school)
      expect(santiago[:name]).to eq("Santiago Mitre")
    end

    it "adds new top level keys" do
      add_new_property(:ranking, 1, school)
      expect(school[:ranking]).to eq 1
    end
  end
end
