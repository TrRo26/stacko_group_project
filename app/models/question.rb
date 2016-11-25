class Question < ActiveRecord::Base
  belongs_to :user, foreign_key: :author_id
  has_many :answers
  has_many :comments, :as => :commentable
  has_many :votes, :as => :voteable

  validates :title, :author_id, { presence: true }

end
