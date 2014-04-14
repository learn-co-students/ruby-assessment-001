def grade_for(name, school)
	school[:students].find{|student| student[:name] == name}[:grade]
end

def update_subject_for(name, subject, school)
	i = school[:instructors].find { |instructor| instructor[:name] == name }
	i[:subject] = subject
end

def find_instructor(name, school)
	school[:instructors].find { |instructor| instructor[:name] == name }
end

def add_student(name, grade, school)
	school[:students] << { name: name, grade: grade }
end

def find_student(name, school)
	school[:students].find {|student| student[:name] == name }
end

def add_new_property(key, value, school)
	school[key] = value
end