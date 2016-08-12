require 'sinatra'
require 'haml'
require 'rubygems'
require './controllers/switch_of_equations'
# require './controllers/solve_linear'
require './controllers/solve_quadratic'

set :public_folder, 'public'

get '/' do
  haml :index
end


get '/index.html/' do
  haml :index
end
post '/' do
  puts params
  (params[:firstlin].to_f + params[:secondlin].to_f + params[:thirdlin].to_f).to_s
  @status = (params[:check]).to_s
  p @status

  if @status == "linear"
    @equation = MainEquations.new
    p @equation.linear(params[:firstlin].to_f,params[:secondlin].to_f,params[:thirdlin].to_f)
  end

  if @status == "quadratic"
    @equation = MainEquations.new
    p @equation.quadratic(
      params[:firstqua].to_f,params[:secondqua].to_f,
      params[:thirdqua].to_f, params[:fourthqua].to_f
    )
  end
    # EXAMPLE STRING "Answer: #{@output}"
    # get to field answer

  # (params[:firstlin].to_f + params[:secondlin].to_f + params[:thirdlin].to_f).to_s
end

