# my_request.rb
#
class MyRequest
  def call(env)
    req = Rack::Request.new(env)
    str = req.params['str']

    Rack::Response.new.finish do |res|
      res['Content-Type'] = 'text/plain'
      res.status = 200
      rev = str.reverse
      res.write rev
    end
  end
end

