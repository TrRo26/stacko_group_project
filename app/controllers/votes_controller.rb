




post "/votes" do
  if request.xhr?
    puts "heeey"
    p session
    p params
    p params["type"]
    if params["type"] == "Answer"
      @answer = Answer.find(params["id"])
      button_color = color(@answer)
      upvote_or_downvoted(@answer)
      content_type :json
    { count: @answer.votes.count, button_color: button_color }.to_json
    elsif params[:type] == "Question"
      @question = Question.find(params["id"])
      button_color = color(@question)
      upvote_or_downvoted(@question)
      content_type :json
    { count: @question.votes.count, button_color: button_color }.to_json
    elsif params["type"] == "Comment"
      @comment = Comment.find(params["id"])
      button_color = color(@comment)
      upvote_or_downvoted(@comment)
      content_type :json
    { count: @comment.votes.count, button_color: button_color }.to_json
    end
  end
end




# post '/votes' do
#   question_id =  params[:question_id]
#   if logged_in?
#     vote = Vote.new(params[:vote])
#     if vote.save
#       puts question_id
#       redirect "/questions/#{question_id}"
#     else
#       @question = Question.find(params[:question_id])
#       @errors = vote.errors.full_messages

#       erb :'questions/show'
#     end
#   else
#     redirect "/questions/#{question_id}"
#   end
# end

delete '/votes' do
  question_id =  params[:question_id]

  if logged_in?
    # current_user.votes
    # questions = user.questions.find
    # if questions.votes.voter_id == user.id
    # vote = Vote.find_by(voter_id: current_user.id, voteable_type:params[:vote][:voteable_type], voteable_id:question_id)
    vote = Vote.find_by(params[:vote])
    vote.destroy
    redirect "/questions/#{question_id}"
  else
    redirect "/questions/#{question_id}"
  end
end
