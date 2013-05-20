class Categorization < ActiveRecord::Base
  attr_accessible :post, :category

  belongs_to :post
  belongs_to :category
end
