#Exercise: Command line arguements to rack application
require 'rack'

def my_rack_proc(env) 
  [200,{"Content-Type" => "Text/plain"},["Hello. The supplied command line arguement is #{ARGV[0]}"]]
end

Rack::Handler::WEBrick.run method(:my_rack_proc)
