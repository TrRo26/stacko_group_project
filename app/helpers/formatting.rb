helpers do
  # def uservoted(voteable)
  #   puts "hi"
  #   voters = voteable.votes.map {|vote| vote.voter_id}
  #   user = User.find(session[:user_id])
  #   voters.include?(user.id)
  #   p voters
  #   p user.id
  # end

  # def upvote_or_downvoted(voteable)
  #   if uservoted(voteable)
  #     puts "hey"
  #       user = User.find(session[:user_id])
  #     vote = voteable.votes.find {|vote| vote.user == user }
  #     vote.destroy
  #   else
  #     puts "HEELLO"
  #     puts "hello"
  #     voteable.votes << Vote.create
  #     voteable.save
  #   end
  # end
  def color(voteable)
    if uservoted(voteable)
      return "red"
    else
      return "green"
    end
  end

end
