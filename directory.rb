def input_students
  puts "Please enter the names of the students"
  puts "To finsih, just hit return twice"
# create an empty array
students = []
# get the first name
name = gets.chomp
# while the name is not empty, repeat this code
while !name.empty? do
  # add the student hash to the array
  students << {name: name, cohort: :november}
  puts "Now we have #{students.count} students"
  # get another name from the user
    name = gets.chomp
  end
  # return the array of students
  students
end

# created header, body & footer
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

# Added index number to the element output
def print(students)
  students.each.each_with_index do |student, index|
    puts "#{index} #{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(names)
puts "Overall, we have #{names.count} great students"
end

def first_letter()
  @student.select { |student| student.start_with('b')}
end

#nothing happnes until we call the methods
students = input_students
print_header
print(students)
print_footer(students)
print first_letter
