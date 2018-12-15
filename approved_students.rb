def approved_students(calif)
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
  principalarray.each do |var|
    approved = sum_approved(var[:nota]) / var[:nota].size
    calif = calif.to_f
    if approved >= calif
      puts "Alumno Aprobado: #{var[:name]}
      con nota #{sum_approved(var[:nota]) / var[:nota].size} \n"
    end
  end
end

def sum_approved(nota)
  suma = nota.inject(0) do |sum, i|
    if i == 'A'
      sum += 1
    else
      sum += i.to_f
    end
  end
  return suma.to_f
end
