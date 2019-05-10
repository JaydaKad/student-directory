
def input_students
  puts "Please enter the names of the students"
  puts "Then enter any hobbies"
  puts "To finish, just hit return twice"
  students =[]

  loop do
    name = gets.chomp
    hobby = gets.chomp
    break if name.empty?
    students << {name: name, hobbies: hobby, cohort: :november}
    puts "Now we have #{students.count} students"
  end
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end
def print(students)
  counter = 0
  while counter < students.count do
      puts "#{students[counter][:name]} (#{students[counter][:cohort]} cohort) hobbies: #{students[counter][:hobbies]}"
      counter += 1
    end
end
def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)
