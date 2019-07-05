# server_spike.rb

url = "GET /?rolls=2&sides=6 HTTP/1.1"

def parameters(url)
  url.scan(/[\?|&]\w+=/).map { |param| param = param[1..-2] }
end

def values(url)
  url.scan(/=\d+[\s&]?/).map { |value| value.match(/\d/).to_s }
end

params = Hash.new('')
vls = values(url)
parameters(url).each_with_index do |prm, idx|
  params[prm]= vls[idx]
end

def parse_out_protocol(url)
  url.split[0]
end

def parse_out_path(url)
  url.split[1][0]
end
