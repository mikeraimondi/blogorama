class Comment < ActiveRecord::Base
  attr_accessible :body, :approved

  validates_presence_of :body
  validates_length_of :body, maximum: 50000

  belongs_to :post
  validates_presence_of :post

  belongs_to :author
  validates_presence_of :author
end
