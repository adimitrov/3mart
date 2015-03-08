require 'sinatra'

get '/' do
  @event_date = DateTime.new(2015,3,15,10,0,0,'+2')
  @current_date = DateTime.now
  # Testing
  #@current_date = DateTime.new(2014,3,2,11,0,0,'+2')
  @hours_to_go = ((@event_date.to_time - @current_date.to_time) / 60 / 60).ceil
  erb :index
end

get '/about' do
  erb :about
end

get '/results' do
  erb :results
end

get '/splits' do
  erb :splits
end

get '/team_results' do
  erb :team_results
end

get '/start_list' do
  erb :start_list
end

get '/video' do
  erb :video
end

get '/tracking' do
  erb :tracking
end

get '/map' do
  erb :map
end

get '/bulletin/?:number?' do
  if params[:number].to_i == 1
    @file = "http://bgorienteering.com/Naredba3Mart2015.pdf"
  else
    # 2
    @file = "http://bgorienteering.com/Bulletin1_3Mart2015.pdf"
  end
  erb :bulletin
end
