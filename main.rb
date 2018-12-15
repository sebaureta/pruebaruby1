require_relative 'students_average.rb'
require_relative 'inasistencias.rb'
require_relative 'approved_students.rb'
option = ''
while option != 4
  puts '1: Generar archivo con el nombre de cada alumno y su promedio de notas'
  puts '2: Contar inasistencias totales y mostrarlas'
  puts '3: Mostrar nombres de los alumnos aprobados'
  puts '4: Finalizar programa'
  puts 'Ingresar Opción:'
  option = gets.to_i

  if option == 1
    students_average
    puts "Se ha generado el archivo correctamente \n"
  elsif option == 2
    total_absenses
  elsif option == 3
    puts 'Ingrese la nota de aprobación (Si no ingresa la nota será 5):'
    calif = gets.chomp
    calif = 5 if calif.empty?
    approved_students(calif)
  elsif option == 4
    # Salida
  else
    puts 'Opcion inválida, favor ingrese nuevamente su opción'
  end
  sleep 2
end
