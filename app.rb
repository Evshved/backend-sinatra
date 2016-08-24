require 'rubygems'
require 'sinatra'
require 'haml'
require 'sinatra/json'

require './lib/equation'
require './lib/linear_equation'
require './lib/quadratic_equation'

set :public_folder, 'public'

get '/' do
  haml :index
end

get '/contact' do
  haml :contact
end

post '/' do
  @algorithm = Equation.new(params)
  @output = @algorithm.solving_equation
  json result: @output.to_s
end
