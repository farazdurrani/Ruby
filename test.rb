require 'net/http'

def salam
  puts "Assalam o Alaikum"
end

salam

def httpcall
url = URI.parse('http://www.example.com/about.html')
req = Net::HTTP::Get.new(url.to_s)
res = Net::HTTP.start(url.host, url.port) {|http|
  http.request(req)
}
puts res.body
end

def httpcall2
result = Net::HTTP.get(URI.parse('http://www.example.com/about.html'))
puts result
end

httpcall
puts 'done'
httpcall2
