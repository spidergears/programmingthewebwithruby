#my_rack_app2.rb
require 'rack'

def my_rack_app(env)
  [200,{"Content-Type" => "Text/plain"},["Hello. Time is #{Time.now}"]]
end

Rack::Handler::WEBrick.run method(:my_rack_app), :Port => 8888
