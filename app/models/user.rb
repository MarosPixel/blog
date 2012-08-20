class User < ActiveRecord::Base

  has_many :articles, foreign_key: :creator_id
  has_many :comments, foreign_key: :creator_id

  attr_accessible :name
  validates :name, presence: true
end
