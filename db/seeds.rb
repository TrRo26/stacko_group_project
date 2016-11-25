User.create(username: "travis", email: "travis@gmail.com", password: "password")
User.create(username: "kenny123", email: "kenny@gmail.com", password: "password")
User.create(username: "eraince", email: "eraince@gmail.com", password: "password")
User.create(username: "sean123", email: "sean@gmail.com", password: "password")
User.create(username: "vince123", email: "vince@gmail.com", password: "password")
User.create(username: "travroy", email: "travroy@gmail.com", password: "password")

Answer.create(answer: "the answer is 5", answerer_id: 1, question_id: 3)
Answer.create(answer: "i have no answer", answerer_id: 3, question_id: 3)
Answer.create(answer: "who knows", answerer_id: 2, question_id: 1)
Answer.create(answer: "pluto is not a planet", answerer_id: 4, question_id: 2)
Answer.create(answer: "the sky is blue", answerer_id: 5, question_id: 2)
Answer.create(answer: "the answer is 5", answerer_id: 6, question_id: 1)

Question.create(title: "What is ruby", body: "i don't know what ruby is!", author_id: 1, best_answer_id: nil)
Question.create(title: "What is python", body: "i don't know what python is!", author_id: 4, best_answer_id: nil)
Question.create(title: "What is javascript", body: "i don't know what javascript is!", author_id: 5, best_answer_id: nil)

Comment.create(commenter_id: 2, commentable_type: "question", commentable_id: 1, text: "idk the answer lol")
Comment.create(commenter_id: 1, commentable_type: "question", commentable_id: 3, text: "who cares")
Comment.create(commenter_id: 4, commentable_type: "question", commentable_id: 2, text: "ruby sucks")
Comment.create(commenter_id: 6, commentable_type: "question", commentable_id: 3, text: "i like turtles")
Comment.create(commenter_id: 1, commentable_type: "answer", commentable_id: 1, text: "pi * r^2")
Comment.create(commenter_id: 5, commentable_type: "answer", commentable_id: 3, text: "true or false")
Comment.create(commenter_id: 6, commentable_type: "answer", commentable_id: 4, text: "idk!!!")
Comment.create(commenter_id: 2, commentable_type: "answer", commentable_id: 4, text: ":)")

Vote.create(voter_id: 6, votable_type: "answer" voteable_id: 1)
Vote.create(voter_id: 5, votable_type: "answer" voteable_id: 2)
Vote.create(voter_id: 1, votable_type: "answer" voteable_id: 3)
Vote.create(voter_id: 6, votable_type: "question" voteable_id: 3)
Vote.create(voter_id: 5, votable_type: "question" voteable_id: 3)
Vote.create(voter_id: 4, votable_type: "question" voteable_id: 2)
Vote.create(voter_id: 3, votable_type: "question" voteable_id: 2)
Vote.create(voter_id: 2, votable_type: "question" voteable_id: 1)
Vote.create(voter_id: 1, votable_type: "question" voteable_id: 1)
Vote.create(voter_id: 6, votable_type: "comment" voteable_id: 1)
Vote.create(voter_id: 5, votable_type: "comment" voteable_id: 1)
Vote.create(voter_id: 4, votable_type: "comment" voteable_id: 2)
Vote.create(voter_id: 3, votable_type: "comment" voteable_id: 2)
Vote.create(voter_id: 2, votable_type: "comment" voteable_id: 3)
Vote.create(voter_id: 1, votable_type: "comment" voteable_id: 4)
Vote.create(voter_id: 4, votable_type: "comment" voteable_id: 5)
Vote.create(voter_id: 3, votable_type: "answer" voteable_id: 5)
Vote.create(voter_id: 4, votable_type: "answer" voteable_id: 4)
Vote.create(voter_id: 2, votable_type: "answer" voteable_id: 6)

