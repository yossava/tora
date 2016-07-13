class Subsubcategory < ActiveRecord::Base
  belongs_to :subcategory
  has_many :produks
end
