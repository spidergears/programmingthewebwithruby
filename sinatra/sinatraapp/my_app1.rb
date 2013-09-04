# my_app1.rb
#
require 'sinatra'
get '/' do
  "Hello from Sinatra!!"
end

post '/login' do
  usrname = params[:usrname]
  passwd = params[:passwd]

  if usrname == 'Deepak' and passwd == 'passwd'
    "Hey!! you are Authenticated."
  else
    "Authentication failed."
  end
end
