class Author < ActiveRecord::Base
  attr_accessible :email, :facebook, :name, :twitter

  validates_presence_of :name, :email

  validates_uniqueness_of :email 
  validates_format_of :email, with: /@/

  validates_uniqueness_of :facebook, :twitter, allow_blank: true
  validates_format_of :twitter, with: /^@/, allow_blank: true

  has_many :posts, :dependent => :destroy
end
