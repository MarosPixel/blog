class Article < ActiveRecord::Base

  belongs_to :creator, class_name: 'User', foreign_key: :creator_id
  has_many :comments, as: :commentable

  attr_accessible :content, :creator_id, :name
  validates_presence_of :name, :content, :creator_id
end
