# exercise_rackup.rb
#
class MyApp
  def initialize(arg)
    @arg = arg
  end
  
  def call(env)
    [200, {"Content-Type" => "text/plain"},["Hello. The supplied command line arguement is #{@arg}"]]
  end
end

