class Comment < ActiveRecord::Base
  
  belongs_to :commentable, polymorphic: true
  belongs_to :creator, class_name: 'User', foreign_key: :creator_id
  
  attr_accessible :content, :commentable_type, :commentable_id, :creator_id
  validates_presence_of :content, :commentable_type, :commentable_id, :creator_id
end
