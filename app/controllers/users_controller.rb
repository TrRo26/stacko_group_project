get '/users/new' do
	if logged_in?
  	return redirect '/'
  end
  erb :'users/new'
end


post '/users' do

	@user = User.new(params[:user])
	if @user.save
		session[:user_id] = @user.id
		if request.xhr?
      return erb :"_nav", layout: false
    else
      redirect "/"
    end
	else
		@errors = @user.errors.full_messages
		erb :'users/new'
	end
end
