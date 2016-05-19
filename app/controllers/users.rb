get '/users/new' do
  erb :'users/new'
end

post '/users' do
  p params
end

get '/users/wtf' do
  p params
end
