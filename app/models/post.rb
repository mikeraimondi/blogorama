class Post < ActiveRecord::Base
  attr_accessible :body, :title

  validates_presence_of :body, :title
  validates_length_of :body, maximum: 100000

  belongs_to :author
  validates_presence_of :author

  has_many :comments

  has_many :categorizations
  has_many :categories, :through => :categorizations
end
