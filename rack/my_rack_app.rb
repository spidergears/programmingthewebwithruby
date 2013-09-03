#my_rack_app.rb
require 'rack'
my_rake_app = lambda{|env| [200,{"Content-Type" => "Text/plain"},["Hello. Time is #{Time.now}"]]}

Rack::Handler::WEBrick.run my_rake_app, :Port => 8888
