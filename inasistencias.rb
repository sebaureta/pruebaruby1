def total_absenses
  file = File.open('notasalumnos.csv', 'r')
  cont = file.readlines
  file.close
  suma = cont.inject(0) { |sum, i| sum + i.split(', ').map(&:chomp).count('A') }
  puts "La cantidad total de inasistencias es: #{suma}'\n\n'"
end
