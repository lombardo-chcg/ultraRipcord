def current_user
  @current_user || User.find(session[:user_id])
end

def user_logged_in?
  if session[:user_id] != nil
    return true
  else
    return false
  end
end

def authorize
  if user_logged_in? == false
    @errors = ['Please log in to perform that action']
    erb :'sessions/new'
  end
end

def boot_sessionless_user
  if session[:user_id] == nil
    redirect '/'
  end
end

def auction_route_authorize
  if current_user.id != @auction.creator_id
    redirect '/sessions?message=not_authorized'
  end
end
