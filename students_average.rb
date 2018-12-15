def students_average
  principalarray = []
  file = File.open('notasalumnos.csv', 'r')
  contents = file.readlines
  file.close
  contents.each do |lines|
    students = {}
    name = lines.split(', ').map(&:chomp)
    students[:name] = name[0]
    students[:nota] = name[1..5]
    principalarray << students
  end
  File.open('students_average.csv', 'w') do |files|
    principalarray.each do |var|
      files.puts "#{var[:name]} = #{sum_of_notes(var[:nota]) / var[:nota].size}"
    end
  end
end

def sum_of_notes(nota)
  suma = nota.inject(0) do |sum, i|
    if i == 'A'
      sum += 1
    else
      sum += i.to_f
    end
  end
  return suma.to_f
end
