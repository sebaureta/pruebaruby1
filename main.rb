option = ''
while option != 4
  puts '1: Generar archivo con el nombre de cada alumno y su promedio de notas'
  puts '2: Contar inasistencias totales y mostrarlas'
  puts '3: Mostrar nombres de los alumnos aprobados'
  puts '4: Finalizar programa'
  puts 'Ingresar Opción:'
  option = gets.to_i

  if option == 1
    # metodo1
  elsif option == 2
    # metodo2
  elsif option == 3
    # metodo3
  elsif option == 4
    # metodo4
  else
    puts 'Opcion inválida, favor ingrese nuevamente su opción'
  end
end
