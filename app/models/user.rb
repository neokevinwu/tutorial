class User < ActiveRecord::Base
  has_many :articles
  validates :password, presence: true,
            length: { minimum: 3 }
  validates :email, presence: true
end
