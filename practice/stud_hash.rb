
students = [
  {:name => "Dr. Hannibal Lecter", :cohort => :november},
  {:name => "Darth Vader", :cohort => :november},
  {:name => "Nurse Ratched", :cohort => :november},
  {:name => "Michael Corleone", :cohort => :november},
  {:name => "Alex De Large", :cohort => :november},
  {:name => "The Alien", :cohort => :november},
  {:name => "Terminator", :cohort => :november},
  {:name => "Freddy Kruger", :cohort => :november},
  {:name => "The Joker", :cohort => :november}
]


def print(students)
  students.each do |var|
    puts "#{var[:name]} (#{var[:cohort]} cohort)"
  end
end

def print_while(students)
  index = 0
  while index < students.size
    puts "#{students[index][:name]} (#{students[index][:cohort]} cohort)"
    index += 1
  end
end


def print_for(students)
  for student in students
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

# print_while students
print_for students
