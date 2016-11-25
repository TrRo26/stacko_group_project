get '/sessions/new' do
  if logged_in?
    redirect '/'
  else
    erb :'sessions/new'
  end
end

post '/sessions' do
  @user = User.find_by(email: params[:user][:email])
  if @user && @user.authenticate(params[:user][:password])
    session[:user_id] = @user.id
    redirect '/'
  else
    @error = "Invalid email or password"
    redirect '/sessions/new'
  end
end

delete '/sessions' do
  if logged_in?
    session[:user_id] = nil
  else
    redirect '/'
  end
end
