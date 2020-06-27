lines = Hash.new

File.open("C:\\Users\\ghar\\Desktop\\test.txt", "r") do |f|
  f.each_line do |line|
#    puts line
    l = line.split('=')
#	puts l
# 	puts "key is #{l.first} and value is #{l.last}" 
	f = "#{l.first}"
	la = "#{l.last}"
    la ["\n"] = ""	
	puts "key is #{f} and value is #{la}"
    lines[:"#{f}"] = "#{la}"
  end
end
# File is closed automatically at end of block

puts lines