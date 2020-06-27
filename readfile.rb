class ReadFile  
	def initialize
		@lines = Hash.new
		File.open("C:\\Users\\ghar\\Desktop\\test.txt", "r") do |f|
		  f.each_line do |line|		
			l = line.split('=')		
			f = "#{l.first}"
			la = "#{l.last}"
			la ["\n"] = ""	
			puts "key is #{f} and value is #{la}"
			@lines[:"#{f}"] = "#{la}"
		  end
	  end
	end
end

  