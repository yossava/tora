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
    @financelog = Financelog.new
    @users = User.order(id: :asc).where("saldo > ?", 0)
    if params[:id]
      User.find(params[:id]).update(:saldo => 0)
      redirect_to "/admin/finance", notice: "Balance direset"
    end
    if params[:user]
      @rekening = User.find(params[:user])
    end
  end
  def financelogs
    @financelog = Financelog.order(id: :asc).paginate(:page => params[:page], :per_page => 15)
  end
  def newsletter
    @newsletter = Newsletter.order(id: :asc).paginate(:page => params[:page], :per_page => 15)
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
  def becomegeneral
      User.find(params[:id]).update(:general => true)
      redirect_to :back, notice: "General Admin ditambahkan"
  end
  def becomefinance
      User.find(params[:id]).update(:finance => true)
      redirect_to :back, notice: "Finance Admin ditambahkan"
  end
  def ungeneral
      User.find(params[:id]).update(:general => false)
      redirect_to :back, notice: "Gen Admin dihapus"
  end
  def unfinance
      User.find(params[:id]).update(:finance => false)
      redirect_to :back, notice: "Finance Admin dihapus"
  end
  def blockuser
    if current_user.admin
      User.find(params[:id]).update(:block => true)
      redirect_to :back, notice: "User telah diblokir"
    end
  end
  def blockproduct
    if current_user.admin
      Produk.find(params[:id]).update(:block => true)
      redirect_to :back, notice: "Produk telah diblok"
    end
  end
  def unblockuser
    if current_user.admin
      User.find(params[:id]).update(:block => false)
      redirect_to :back, notice: "User telah diunblock"
    end
  end
  def unblockproduct
    if current_user.admin
      Produk.find(params[:id]).update(:block => false)
      redirect_to :back, notice: "Produk telah diunblock"
    end
  end
  def fee
    @homeitem = Homeitem.find(17)
    @stores = Toko.order(id: :asc).paginate(:page => params[:page], :per_page => 10)
  end
  def resendconfirmation
    if current_user.admin
      User.find(params[:id]).send_confirmation_instructions
      redirect_to :back, notice: "Email konfirmasi User telah dikirim"
    end
  end
  def resetpassword
    if current_user.admin
      User.find(params[:id]).send_reset_password_instructions
      redirect_to :back, notice: "Email reset password User telah dikirim"
    end
  end

  def deleteadmin
    if current_user.admin
      User.find(params[:id]).update(:admin => false)
      redirect_to :back, notice: "Admin User dihapus"
    end
  end
  def destroynewsletter
    @newsletter = Newsletter.find(params[:id])
    @newsletter.destroy

    if @newsletter.destroy
        redirect_to :back, notice: "Email dihapus."
    end
  end
  def homepage
    @homeitems = Homeitem.order(id: :asc).paginate(:page => params[:page], :per_page => 15)
    @homeitem = Homeitem.new
    if params[:id]
    @homeitem = Homeitem.find(params[:id])
    end
  end
  def general
     @homeitem = Homeitem.find(16)
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
  def subsubcategories
    @subsubcategories = Subsubcategory.order(id: :asc).paginate(:page => params[:page], :per_page => 15)
    @subsubcategory = Subsubcategory.new
    if params[:id]
    @subsubcategory = Subsubcategory.find(params[:id])
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
    if params[:search]
      @users = User.search(params[:search])
    end
  end
  def stores
    @stores = Toko.order(id: :asc).paginate(:page => params[:page], :per_page => 10)
    if params[:id]
    @toko = Toko.find(params[:id])
    end
    if params[:search]
      @stores = Toko.search(params[:search])
    end
  end
  def products
    @products = Produk.order(id: :asc).paginate(:page => params[:page], :per_page => 15)
    if params[:id]
    @produk = Produk.find(params[:id])
    end
  end
  def destroystore
     @store = Toko.friendly.find(params[:id])
     @store.destroy

    if @store.destroy
        redirect_to :back, notice: "Toko dihapus."
    end
  end
  def destroystatic
     @static = Static.friendly.find(params[:id])
     @static.destroy

    if @static.destroy
        redirect_to :back, notice: "Halaman dihapus."
    end
  end
  def destroyhomeitem
     @home = Homeitem.find(params[:id])
     @home.destroy

    if @home.destroy
        redirect_to :back, notice: "Item dihapus."
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
  def destroysubsubcategory
     @subsubcategory = Subsubcategory.find(params[:id])
     @subsubcategory.destroy

    if @subsubcategory.destroy
        redirect_to :back, notice: "Sub-subkategori dihapus."
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
     @product = Produk.friendly.find(params[:id])
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
