class Category < ActiveRecord::Base
  validates :title, :presence => true

  has_many :subcategories
  has_many :articles
end
