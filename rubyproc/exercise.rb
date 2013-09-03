#Exercise: Command line arguements to rack application
#
my_rack_proc = lambda{|env| [200, {"Content-Type" => "text/plain"},["Command line arguement you passed was: #{env["arg"]}"]]}

puts my_rack_proc.call({"arg" => ARGV[0]})
