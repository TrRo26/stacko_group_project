post '/votes' do
  question_id =  params[:question_id]

  if logged_in?
    vote = Vote.new(params[:vote])
    if vote.save

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

delete /votes/:id do
  # add parameter values
  vote = Vote.find_by(voter_id: , voteable_type:, voteable_id: )

  vote.destroy

  # figure out how to redirect
end
