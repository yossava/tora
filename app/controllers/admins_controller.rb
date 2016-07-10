class AdminsController < ApplicationController
  skip_before_action :tokosaya
  before_filter :authenticate_user!, :except => [:login]
  before_filter :isadmin, :except => [:login]

  def login
    render :layout => nil
  end
  def topproduct
    @products = Produk.order(id: :asc).paginate(:page => params[:page], :per_page => 15)
    if params[:top] == "top"
      @product = Produk.find(params[:id])
      if @product.top == true
      @product.update(:top => false)
        else
        @product.update(:top => true)
      end
      redirect_to :back, notice: "Top product diupdate"
    end
    if params[:top] == "special"
      @product = Produk.find(params[:id])
      if @product.special == true
      @product.update(:special => false)
        else
        @product.update(:special => true)
      end
      redirect_to :back, notice: "Top product diupdate"
    end
    if params[:top] == "recommended"
      @product = Produk.find(params[:id])
      if @product.recommended == true
      @product.update(:recommended => false)
        else
        @product.update(:recommended => true)
      end
      redirect_to :back, notice: "Top product diupdate"
    end
  end

  def finance
    @users = User.order(id: :asc).where("saldo > ?", 0)
    if params[:id]
      User.find(params[:id]).update(:saldo => 0)
      redirect_to "/admin/finance", notice: "Balance direset"
    end
  end
  def dashboard
    @balance = []
    User.all.each do |u|
      @balance << u.saldo
    end
    @balance = @balance.sum
  end
  def becomeadmin
    if current_user.admin
      User.find(params[:id]).update(:admin => true)
      redirect_to :back, notice: "Admin User ditambahkan"
    end
  end
  def deleteadmin
    if current_user.admin
      User.find(params[:id]).update(:admin => false)
      redirect_to :back, notice: "Admin User dihapus"
    end
  end
  def homepage
    @homeitems = Homeitem.order(id: :asc).paginate(:page => params[:page], :per_page => 15)
    @homeitem = Homeitem.new
    if params[:id]
    @homeitem = Homeitem.find(params[:id])
    end
  end
  def statics
    @statics = Static.order(id: :asc).paginate(:page => params[:page], :per_page => 15)
    @static = Static.new
    if params[:id]
    @static = Static.find(params[:id])
    end
  end
  def categories
    @categories = Category.order(id: :asc).paginate(:page => params[:page], :per_page => 15)
    @category = Category.new
    if params[:id]
    @category = Category.find(params[:id])
    end
  end

  def subcategories
    @subcategories = Subcategory.order(id: :asc).paginate(:page => params[:page], :per_page => 15)
    @subcategory = Subcategory.new
    if params[:id]
    @subcategory = Subcategory.find(params[:id])
    end
  end
  def users
    @users = User.order(id: :asc).paginate(:page => params[:page], :per_page => 15)
    if params[:id]
    @user = User.find(params[:id])
      if params[:namalengkap] &&  params[:email]
        @user.update(:namalengkap => params[:namalengkap])
        @user.update(:email => params[:email])
        redirect_to :back, notice: "User diupdate."
      end
    end
  end
  def stores
    @stores = Toko.order(id: :asc).paginate(:page => params[:page], :per_page => 15)
    if params[:id]
    @toko = Toko.find(params[:id])
    end
  end
  def products
    @products = Produk.order(id: :asc).paginate(:page => params[:page], :per_page => 15)
    if params[:id]
    @produk = Produk.find(params[:id])
    end
  end
  def destroystore
     @store = Toko.find(params[:id])
     @store.destroy

    if @store.destroy
        redirect_to :back, notice: "Toko dihapus."
    end
  end
  def destroystatic
     @static = Static.find(params[:id])
     @static.destroy

    if @static.destroy
        redirect_to :back, notice: "Halaman dihapus."
    end
  end
  def destroycategory
     @category = Category.find(params[:id])
     @category.destroy

    if @category.destroy
        redirect_to :back, notice: "Kategori dihapus."
    end
  end
  def destroysubcategory
     @subcategory = Subcategory.find(params[:id])
     @subcategory.destroy

    if @subcategory.destroy
        redirect_to :back, notice: "Subkategori dihapus."
    end
  end
  def destroyuser
     @user = User.find(params[:id])
     @user.destroy

    if @user.destroy
        redirect_to :back, notice: "User dihapus."
    end
  end

  def destroyproduct
     @product = Produk.find(params[:id])
     @product.destroy

    if @product.destroy
        redirect_to :back, notice: "Produk dihapus."
    end
  end

  private
  def isadmin
    redirect_to "/masuk" unless current_user && current_user.admin?
  end

end
