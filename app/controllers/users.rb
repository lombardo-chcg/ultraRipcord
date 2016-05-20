get '/users/new' do
  erb :'users/new'
end

post '/users' do
  @user = User.new(params[:user])

  if @user.save
    session[:user_id] = @user.id
    redirect "/users/#{@user.id}"
  else
    @errors = @user.errors.full_messages
    erb :'users/new'
  end
end

get '/users/newPreferences' do
  erb :'users/newPreferences'
end

post '/users/setPreferences' do
  params.each do |pref, status|
    current_user.preferences.create!(tag_id: (Tag.find_by(description: pref)).id)
  end
  redirect "/users/#{current_user.id}"
end

get 'users/video_over' do
  @user = current_user
  redirect "/users/#{@user.id}"
end

get '/users/:id' do
  erb :'users/show'
end
