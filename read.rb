require_relative 'readfile' 

m = ReadFile.new()  
lines = m.instance_variable_get(:@lines)

puts "printing from this class"
puts lines