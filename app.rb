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
  puts params
  # (params[:firstlin].to_f + params[:secondlin].to_f + params[:thirdlin].to_f).to_s
  @status = (params[:check]).to_s
  p @status

  # логика должна быть в одном месте
  if @status == "linear"
    @equation = Equation.new
    @data = @equation.linear(params[:firstlin].to_f,params[:secondlin].to_f)
  end

  if @status == "quadratic"
    @equation = Equation.new
    @data = @equation.quadratic(
      params[:firstqua].to_f,params[:secondqua].to_f,
      params[:thirdqua].to_f
    )
  end
  json result: @data.to_s
end
# убрать bootstrap и rspec min и min
