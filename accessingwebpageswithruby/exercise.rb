# Exercise: Browsing the web

require 'net/http'
url = URI.parse('http://ruby-metaprogramming.rubylearning.com/html/ruby_metaprogramming_1.html')
 
Net::HTTP.start(url.host, url.port) do |http|
  req = Net::HTTP::Get.new(url.path)
  puts http.request(req).body.split(/\W+/).count('the')
end
