#my_middleware.rb

module Middleware
  class Hello
    def initialize(app)
      @app = app
    end

    def call(env)
      p env["PATH_INFO"]
      return [200, {"Content-Type" => "text/plain"}, ["Hello form Middleware!."]] if env["PATH_INFO"] == "/hello"
      if env["PATH_INFO"] == "/"
        #fwd request
        @app.call(env)
      else
        [404, {"Content-Type" => "text/plain"}, ["Page not found"]]
      end
    end
  end
end

