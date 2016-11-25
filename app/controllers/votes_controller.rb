post '/votes' do
  question_id =  params[:question_id]

  if logged_in?
    vote = Vote.new(params[:vote])
    if vote.save
      puts question_id
      redirect "/questions/#{question_id}"
    else
      @question = Question.find(params[:question_id])
      @errors = vote.errors.full_messages

      erb :'questions/show'
    end
  else
    redirect "/questions/#{question_id}"
  end
end

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
