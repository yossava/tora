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
  def masuk
    render layout: "common"
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
  def index2
    if user_signed_in?
        FavoriteProduk.where(:user_id => current_user.id).each do |del|
        @delfav = del
        end
      end
      if user_signed_in?
        @fav = []
        current_user.favorites.each do |fav|
        @fav << fav.id
      end
    end
    @favorite_produk = FavoriteProduk.new
    @bestseller = Produk.first(5)
    @onsale = Produk.where("harga_diskon > ?", 0 ).first(5)
    @newproduct = Produk.all.order("created_at desc").first(5)
    @fashionpria = Produk.all.order("created_at desc").first(5)
    @fashionwanita = Produk.all.order("created_at desc").first(5)
    @toys = Produk.all.order("created_at desc").first(5)
    @elektronik = Produk.all.order("created_at desc").first(5)
    @book = Produk.all.order("created_at desc").first(5)
    @food = Produk.all.order("created_at desc").first(5)
    render layout: "main"
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
      @fashioncat = Category.find(7)
      @gadgetcat = Category.find(8)
      @beautycat = Category.find(9)
      @elektronikcat = Category.find(11)
      @sportcat = Category.find(12)
      @babycat = Category.find(10)
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
