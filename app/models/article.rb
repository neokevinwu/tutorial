class Article < ActiveRecord::Base
  belongs_to :user
  has_many :comments, dependent: :destroy
  validates :title, presence: true,
            length: { maximum: 50 }
  validates :post, presence: true
end
