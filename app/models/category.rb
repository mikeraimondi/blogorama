class Category < ActiveRecord::Base
  attr_accessible :description, :name

  validates_presence_of :name
  validates_uniqueness_of :name

  validates_length_of :description, maximum: 1000

  has_many :categorizations
  has_many :posts, :through => :categorizations
end
