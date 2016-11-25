get '/questions/:id/comments/new' do
  @id = params[:id]
  @type = "Question"
  @question_id = params[:id]

  erb :'comments/new'
end


get '/answers/:id/comments/new' do
  @id = params[:id]
  @type = "Answer"
  answer = Answer.find(params[:id])
  @question_id = answer.question_id

  erb :'comments/new'
end

post '/comments' do
  if logged_in?
    comment = Comment.new(params[:comments])
    if comment.save
      redirect '/questions/#{params[:question_id]}'
    else
      @question = Question.find(params[:question_id])
      @errors = comment.errors.full_messages
      erb :'questions/show'
    end
  else
    redirect '/questions/#{comment[:question_id]}'
  end
end


