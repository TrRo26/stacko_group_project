class User < ActiveRecord::Base
	has_many :questions, { foreign_key: :author_id }
	has_many :answers, { foreign_key: :answerer_id }
	has_many :comments, { as: :commentable }
	has_many :votes, { as: :voteable }

	validates :username, { presence: true, length: { in: 6..12 }, uniqueness: true }
	validates :email, { presence: true, format: { with: /@\S*[.][a-z]{3}/}, uniqueness: true }
	validates :password, { presence: true, length: { in: 6..12 } }

  def password
    @password ||= BCrypt::Password.new(encrypted_password)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.encrypted_password = @password
  end

  def authenticate(password)
  	self.password == password
  end

end
