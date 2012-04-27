load 'fecha.rb'

f = Fecha.new
puts "fecha iso: #{f.valIso '2012-01-21'}"
puts f.flexible '20120120'
puts f.flexible '3rd Feb 2012'

