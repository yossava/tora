class HomeController < ApplicationController
  before_filter :authenticate_user!, :only => [:profil]
  before_action :produk
  require 'rest_client'
  require 'net/http'

  def cronjobs
    Cart.where(:state => 3).each do |c|
      if (c.created_at + 4.days - Time.now).to_i/86400 < 1
        Cart.find(c.id).update(:expired => true)
        status = "Pesanan telah dibatalkan otomatis"
        mycart = c
        Notifikasi.sample_email(current_user, mycart, status).deliver_later
      end
    end
    Cart.where(:state => 2).each do |c|
      if (c.created_at + 3.days - Time.now).to_i/86400 < 1
        Cart.find(c.id).update(:expired => true)
        status = "Pesanan telah dibatalkan otomatis"
        mycart = c
        Notifikasi.sample_email(current_user, mycart, status).deliver_later
      end
    end
  end

  def expired
    Cart.find(params[:id]).update(:expired => true)
    redirect_to :back
  end

  def display
      respond_to do |format|
      format.js
      end
  end
  def ongkir
    if params[:kota]
    subs = RestClient.get 'http://pro.rajaongkir.com/api/subdistrict', {:params => {:city => params[:kota], :key => '45c5c245f49664fcd38a86f3c24f7763'}}
    @kecamatan = JSON.parse subs
    @kec = @kecamatan['rajaongkir']['results']
    end
    cities = RestClient.get 'http://pro.rajaongkir.com/api/city', {:params => {:province => params[:provinsi], :key => '45c5c245f49664fcd38a86f3c24f7763'}}
    provinces = RestClient.get 'http://pro.rajaongkir.com/api/province', {:params => {:key => '45c5c245f49664fcd38a86f3c24f7763'}}
    @province = JSON.parse provinces
    @city = JSON.parse cities
    @pro = @province['rajaongkir']['results']
    @cit = @city['rajaongkir']['results']
  end
  def index
  end
  def profil
  end

  def edit
  end
  def finish
  end
  def bayar
    @currentcart = Cart.where(:user_id => current_user.id, :state => 1)
    @subtotal = []
    @currentcart.each do |c|
    @subtotal << c.subtotal
    end
  end


    private
    # Use callbacks to share common setup or constraints between actions.

    def produk
      @produks = Produk.where(:block => false)
      @couponcat = Category.find(14)
      @fashioncat = Category.find(7)
      @gadgetcat = Category.find(8)
      @beautycat = Category.find(9)
      @elektronikcat = Category.find(11)
      @sportcat = Category.find(12)
      @homecat = Category.find(13)
      @babycat = Category.find(10)
      @makanancat = Category.find(16)
      @fashionproduct = Produk.where(:category_id => @fashioncat, :block => false).order('created_at DESC').take(10)
      @gadgetproduct = Produk.where(:category_id => @gadgetcat, :block => false).order('created_at DESC').take(10)
      @beautyproduct = Produk.where(:category_id => @beautycat, :block => false).order('created_at DESC').take(10)
      @electroproduct = Produk.where(:category_id => @elektronikcat, :block => false).order('created_at DESC').take(10)
      @sportproduct = Produk.where(:category_id => @sportcat, :block => false).order('created_at DESC').take(10)
      @homeproduct = Produk.where(:category_id => @homecat, :block => false).order('created_at DESC').take(10)
      @babyproduct = Produk.where(:category_id => @babycat, :block => false).order('created_at DESC').take(10)
      @foodproduct = Produk.where(:category_id => @makanancat, :block => false).order('created_at DESC').take(10)
      @couponproduct = Produk.where(:category_id => @couponcat, :block => false).order('created_at DESC').take(10)
    end
end
