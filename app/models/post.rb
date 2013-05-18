class Post < ActiveRecord::Base
  attr_accessible :body, :title

  validates_presence_of :body, :title
  validates_length_of :body, maximum: 100000
end
