# my_app.rb
#
class MyApp
  def call(env)
    [200, {"Content-Type" => "text/plain"},["Hello. Time is #{Time.now}"]]
  end
end
