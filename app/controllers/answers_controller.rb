get '/questions/:id/answers/new' do
	@question_id = params[:id]
	erb :"/answers/new"
end

post '/answers' do
	question_id = params[:question_id]
	answer = params[:answer]
	user_id = current_user.id
	new_answer = Answer.new({answer: answer,answerer_id: user_id,question_id: question_id})
	if new_answer.save
		redirect "/questions/#{params[:question_id]}"
	else
		@error = answer.errors.full_messages
		erb :"/answers/new"
	end
end

delete '/answers' do
	answer_id = params[:answer_id]
	answer = Answer.find(answer_id)
	question_id = answer.question.id
	@questions = Question.find(question_id)
	answer.destroy
	redirect "/questions/#{question_id}"
end
