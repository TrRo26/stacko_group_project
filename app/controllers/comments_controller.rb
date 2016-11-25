get '/questions/:id/comments/new' do
  @id = params[:id]
  @type = "questions"

  erb :'comments/new'
end


get '/answers/:id/comments/new' do
  @id = params[:id]
  @type = "answers"

  erb :'comments/new'
end

post '/comments' do
  if logged_in?
    comment = Comment.new(params[:comments])
    if comment.save


  redirect '/questions/#{comment[:question_id]}'
end


