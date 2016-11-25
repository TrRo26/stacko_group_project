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
    if request.xhr?
      # 200
      erb :"_nav", layout: false
    else
      redirect '/'
    end
  else
    @error = "Invalid email or password"
    redirect '/sessions/new'
  end
end

delete '/sessions' do
  if logged_in?
    session[:user_id] = nil
    redirect '/'
  else
    redirect '/'
  end
end
