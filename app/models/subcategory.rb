class Subcategory < ActiveRecord::Base
  has_and_belongs_to_many :category
  has_many :produks
  has_many :subsubcategories
  mount_uploader :slide1, ImageUploader
  mount_uploader :slide2, ImageUploader
  mount_uploader :slide3, ImageUploader
end
