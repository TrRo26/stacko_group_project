helpers do
  def uservoted(voteable)
    voters = voteable.votes.map {|vote| vote.voter_id}
    p voters
    p session[:user_id]
    voters.include?(session[:user_id])
  end

  def upvote_or_downvoted(voteable)
    if uservoted(voteable)
      vote = voteable.votes.find {|vote| vote.voter_id == session[:user_id] }
      vote.destroy
    else
      voteable.votes << Vote.create(voter_id: session[:user_id])

      voteable.save
    end
  end
end