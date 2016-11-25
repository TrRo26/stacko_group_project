# show all questions: index
get '/questions' do
  @questions = Question.all
  erb :'questions/index'
end

# new question form
get '/questions/new' do
  if logged_in?
    erb :'questions/new'
  else
    @errors = ["You must be logged in to add a question."]
    erb :'questions/index'
  end
end

# create new question:
post '/questions' do
  @questions = Question.new(params[:question])
  # user needs to be logged in.
  if logged_in?
    if @questions.save
      redirect '/questions'
    else
      @errors = @questions.errors.full_messages
      erb :'questions/new'
    end
  else
    @errors = ["You must be logged in to add a question."]
    erb :'questions/new'
  end
end

# delete question if user id.
delete '/questions/:id' do
  question = Question.find(params[:id])
  if current_user.id == question.author_id
    redirect '/questions'
  else
    @errors = ["You don't have permission to do that! You are not the author."]
    erb :'questions/index'
  end
end


get '/questions/:id' do
  @questions = Question.find(params[:id]) # not sure if i need this.
  erb :'questions/show'
end

# i can have one 'put' for modifying questions...






