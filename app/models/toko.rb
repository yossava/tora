class Toko < ActiveRecord::Base
  mount_uploader :toko_image, ImageUploader
  mount_uploader :banner1, ImageUploader
  mount_uploader :banner2, ImageUploader
  mount_uploader :banner3, ImageUploader
  belongs_to :user
  belongs_to :cart
  has_many :feedbacks,    dependent: :destroy
  has_many :produks,    dependent: :destroy
  has_many :categories, through: :produks

    def self.search(search)
      search = search.downcase
      where("lower(nama_toko) LIKE :search OR slug LIKE :search", search: "%#{search}%")
    end

    extend FriendlyId
    friendly_id :nama_toko, use: :slugged
end
