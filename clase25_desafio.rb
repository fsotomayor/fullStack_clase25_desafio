#clase Alumno
class Alumno
	attr_accessor :notas, :nombre
	
	def initialize(nombre)
		notas_alumnos = Random.new

		@nombre = nombre
		@notas = [notas_alumnos.rand(1..7),notas_alumnos.rand(1..7),notas_alumnos.rand(1..7),notas_alumnos.rand(1..7)]
	end

	def promedio
		prom = 0
		@notas.each do |n|
			prom += n
		end
		prom / @notas.length
	end
end
#fin clase Alumno

#arreglo de objetos de clase Alumno
arr = []
10.times do |x|
	arr << Alumno.new("Alumno#{x}")
end

=begin
a = Alumno.new("fco")
puts a.notas
puts "promedio: #{a.promedio}"
=end

#buscar promedio más alto. Esto servirá para buscar a los alumnos que tengan ese promedio
prom_alto = 0
arr.each do |obj_alumno|
	#puts "#{alumno.nombre} - #{alumno.promedio}"
	if obj_alumno.promedio > prom_alto
		prom_alto = obj_alumno.promedio
	end
end

#imprimir nombre de el o los alumnos con el promedio más alto
alumno_alto = []
arr.each do |obj_alumno|
	if obj_alumno.promedio == prom_alto
		alumno_alto.push(obj_alumno.nombre)
	end
end

if alumno_alto.length == 1
	puts "El alumno con el promedio más alto es: #{alumno_alto[0]} - #{prom_alto}"
elsif alumno_alto.length > 1
	puts "Los alumnos con los promedios más altos son:"
	alumno_alto.each do |nom_alumno|
		puts "#{nom_alumno} - #{prom_alto}"
	end
end
puts ""