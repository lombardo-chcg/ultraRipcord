get '/users' do
  redirect '/'
end

get '/users/new' do
  erb :'users/new'
end

get '/users/new_preferences' do
  erb :'users/new_preferences'
end

post '/users/preferences' do
  boot_sessionless_user
  @user = current_user

  preferences = params
  p params
end

post '/users' do
  @user = User.new(params[:user])

  if @user.save
    session[:user_id] = @user.id
    redirect '/'
  else
    @errors = @user.errors.full_messages
    erb :'users/new'
  end
end

get '/users/:id' do
  erb :'users/show'
end

get '/sessions_view' do
  session.inspect
end
