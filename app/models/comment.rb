class Comment < ActiveRecord::Base
  belongs_to :commentable, :polymorphic => true
  belongs_to :user, {foreign_key: :commenter_id}
  has_many :votes, :as => :voteable
end
