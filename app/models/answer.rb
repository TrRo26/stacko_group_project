class Answer < ActiveRecord::Base
	belongs_to :question
	belongs_to :answerer, { class_name: "User" }
	has_many :votes, { as: :voteable }
	has_many :comments, { as: :commentable }

	validates :answer,:question_id,:answerer_id, {presence: true}

end
