#config.ru
require './my_middleware'

use Middleware::Hello #using middleware defined in my_middleware.rb
run Proc.new{|env| [200, {"Content-Type" => "text/plain"}, ["try visiting /hello"]]}

