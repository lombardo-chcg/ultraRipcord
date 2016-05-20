get '/login' do
  erb :'sessions/new'
end

post '/login' do
  p params
  @user = User.where(email: params[:email])
  @user = @user[0]

  if @user && @user.authenticate(params[:password])
    session[:user_id] = @user.id
    redirect "/users/#{@user.id}"
  else
    @errors = ["Your username and password didn't match.  Please try again."]
    erb :"sessions/new"
  end
end

get '/logout' do
  session.delete(:user_id)
  redirect '/'
end

get '/session' do
  boot_sessionless_user
  erb :"sessions/show"
end

get '/session_view' do
  @session = session.inspect
  erb :'sessions/show'
end
