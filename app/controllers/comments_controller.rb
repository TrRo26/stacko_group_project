get '/questions/:id/comments/new' do
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


end

delete '/comments/:id' do

  comment = Comment.find(params[:id])

  comment.destroy
  # need to redirect to the correct place.

end


