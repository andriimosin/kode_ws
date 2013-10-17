class Article < ActiveRecord::Base
  has_attached_file :asset

  attr_accessor :delete_asset
  before_validation { self.asset.clear if self.delete_asset == '1' }

  belongs_to :admin
  belongs_to :category
  belongs_to :subcategory
end
