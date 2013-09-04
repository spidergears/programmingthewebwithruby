# my_app_strrev.rb
#
require 'sinatra'

get '/' do
  erb :welcome
end

post '/reverse' do
  erb :reverse
end
