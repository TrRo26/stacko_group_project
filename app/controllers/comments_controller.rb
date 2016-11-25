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

  question_id =  params[:question_id]

  if logged_in?
    comment = Comment.new(params[:comment])
    if comment.save

      redirect "/questions/#{question_id}"
    else
      @question = Question.find(params[:question_id])
      @errors = comment.errors.full_messages

      erb :'questions/show'
    end
  else
    redirect "/questions/#{question_id}"
  end
end

delete '/comments/:id' do

  comment = Comment.find(params[:comment_id])

  comment.destroy
  # need to redirect to the correct place.
  redirect "/questions/#{params[:question_id]}"
end


