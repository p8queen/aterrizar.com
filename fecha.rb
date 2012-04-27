require 'date'
#Date.strptime('03-02-2001', '%d-%m-%Y')		
# Convertir un String a un a una fecha, empleando algún formato. Debemos soportar los
# siguientes requerimientos:
# ○ ISO8601 (el estándar internacional). Las fechas se presentan en formato yyyy-
# MM-dd
# ○ Latinoamericano: Las fechas se presentan en formato dd/MM/yyyy
# ○ Norteamericano: La fechas se representan MM-dd-yyyy
# ○ Flexible: tiene un conjunto de formatos, convierte con el primero que pueda
# parsear la fecha.

class Fecha
	
	def valIso(strFecha)
		begin
			@d = Date.strptime(strFecha, '%Y-%m-%d')	
		rescue 
			'Fecha con mal formato'
		end
		
	end

	def latino strFecha
		Date.strptime(strFecha, '%d/%m/%Y')		
	end

	def usa strFecha
		Date.strptime(strFecha, '%m-%d-%Y')		
	end

	def flexible strFecha
		
	end

end
