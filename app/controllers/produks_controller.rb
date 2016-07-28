class ProduksController < ApplicationController
  before_action :set_produk, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show, :cari]
  before_filter :store_history, only: [:show]



  # GET /produks
  # GET /produks.json
  def hitungongkir
    @tokoid = params[:tokoid]
    @agen = []
    @agen << Toko.find(@tokoid).agen1
    @agen << Toko.find(@tokoid).agen2
    @agen << Toko.find(@tokoid).agen3
    @agen << Toko.find(@tokoid).agen4
    @agen << Toko.find(@tokoid).agen5
    @agen << Toko.find(@tokoid).agen6
    @agen << Toko.find(@tokoid).agen7
    if params[:asal]
      ongkir = RestClient.post 'http://pro.rajaongkir.com/api/cost', :originType => 'city', :destinationType => 'city', :origin => params[:asal], :destination => params[:tujuan], :weight => 1000, :courier => 'jne:tiki:pos', :key => '45c5c245f49664fcd38a86f3c24f7763'
       @ongkir = JSON.parse ongkir
       @all = @ongkir['rajaongkir']['results']
       @count = @ongkir['rajaongkir']['results'][0]['costs'].count
      respond_to do |format|
      format.js
      end
     end
  end
  def cari
    @produks = Produk.all
    if params[:search]
      @produks = Produk.search(params[:search])
    else
      @produks = Produk.all
    end
    @itemvalue = 15
    @min = 0
    @max = 1000000000
    @maxvalue = "-"
    @sort = "Produk Terbaru"
    if params[:sort]
      @itemvalue = params[:item]
      @min = params[:min]
      @max = params[:max]
      if params[:max] == "1000000000"
        @max = params[:max]
        @maxvalue = "-"
        else
        @maxvalue = params[:max]
      end
      @hargaselect = "max=" + @max + "&min=" + @min
      if params[:sort] == "1"
        @sort = "Produk Terbaru"
        @sortselect = 1
        @sortvalue = "created_at desc"
        elsif params[:sort] == "2"
        @sort = "Produk Terpopuler"
        @sortselect = 2
        @sortvalue = "bought asc"
        elsif params[:sort] == "3"
        @sort = "Diskon Terbesar"
        @sortselect = 3
        @sortvalue = "diskon desc"
        elsif params[:sort] == "4"
        @sort = "Rating Tertinggi"
        @sortselect = 4
        @sortvalue = "rating desc"
        else
        @sort = "Random"
        @sortselect = 5
        @sortvalue = "created_at desc"
      end
    end
    if params[:sort]
    @cat = @produks.where("harga_beli > ? AND harga_beli < ?", params[:min], params[:max]).order(@sortvalue).paginate(:page => params[:page], :per_page => params[:item])
      else
      @cat = @produks.paginate(:page => params[:page], :per_page => 15)
    end

  end
  def index
    @produks = Produk.all
    @myproduks = current_user.produks.paginate(:page => params[:page], :per_page => 5)
  end

  # GET /produks/1
  # GET /produks/1.json
  def form
    @tokoid = params[:tokoid]
    @agen = []
    @agen << Toko.find(@tokoid).agen1
    @agen << Toko.find(@tokoid).agen2
    @agen << Toko.find(@tokoid).agen3
    @agen << Toko.find(@tokoid).agen4
    @agen << Toko.find(@tokoid).agen5
    @agen << Toko.find(@tokoid).agen6
    @agen << Toko.find(@tokoid).agen7
    if params[:asal]
      @tujuan = Alamat.find(params[:tujuan]).kabupaten
      ongkir = RestClient.post 'http://pro.rajaongkir.com/api/cost', :originType => 'city', :destinationType => 'city', :origin => params[:asal], :destination => @tujuan, :weight => 1000, :courier => 'jne:tiki:pos', :key => '45c5c245f49664fcd38a86f3c24f7763'
       @ongkir = JSON.parse ongkir
       @all = @ongkir['rajaongkir']['results']
       @count = @ongkir['rajaongkir']['results'][0]['costs'].count
     end
    @produk = Produk.find(params[:produk])
    respond_to do |format|
      format.js { render :file => "/produks/show.js.erb" }
    end
  end
  def show
    @cart = Cart.new
    @produk = Produk.friendly.find(params[:id])
    @favorite_produk = FavoriteProduk.new
    if user_signed_in?
        @fav = []
        current_user.favorites.each do |fav|
        @fav << fav.id
        end
    end
    @pcategory = Category.find(@produk.category.id)
    @related = Produk.where(:category_id => @pcategory).first(5)
    @also = Produk.where(:category_id => @pcategory).last(5)
    @onsale = Produk.where("diskon > ?", 0).order("RANDOM()").limit(5)
    @newproduct = Produk.order("created_at desc").first(5)
    render layout: "show"
  end

  # GET /produks/new
  def new
    @produk = Produk.new
  end

  # GET /produks/1/edit
  def edit
    @produks = Produk.all
  end

  # POST /produks
  # POST /produks.json
  def create
    @produk = Produk.new(produk_params)
    @produk.user = current_user
    @produk.toko_id = @toko.id

    respond_to do |format|
      if @produk.save
        format.html { redirect_to produks_path, notice: 'Produk diperbarui.' }
        format.json { render :show, status: :created, location: @produk }
      else
        format.html { render :new }
        format.json { render json: @produk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /produks/1
  # PATCH/PUT /produks/1.json
  def update
    @produk.category_id = params[:category_id]
    @produk.subcategory_id = params[:subcategory_id]
    @produk.toko_id = @toko.id
    respond_to do |format|
      if @produk.update(produk_params)
        format.html { redirect_to :back, notice: 'Produk was successfully updated.' }
        format.json { render :show, status: :ok, location: @produk }
      else
        format.html { render :edit }
        format.json { render json: @produk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /produks/1
  # DELETE /produks/1.json
  def destroy
    @produk.destroy
    respond_to do |format|
      format.html { redirect_to produks_path, notice: 'Produk was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    def set_produk
      @produk = Produk.friendly.find(params[:id])
    end
    def store_history
      session[:history] ||= []
      session[:history].delete_at(0) if session[:history].size >= 10
      session[:history] << request.url
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def produk_params
      params.require(:produk).permit(:nama_produk, :harga, :harga_diskon, :berat, :foto_produk1, :foto_produk2, :foto_produk3, :foto_produk4, :foto_produk5, :foto_produk6, :deskripsi, :harga_grosir1, :harga_grosir2, :harga_grosir3, :harga_grosir4, :harga_grosir5, :jumlah_grosir1min, :jumlah_grosir1max, :jumlah_grosir2min,:jumlah_grosir2max, :jumlah_grosir3min, :jumlah_grosir3max, :jumlah_grosir4min, :jumlah_grosir4max, :jumlah_grosir5min, :jumlah_grosir5max, :user_id, :category_id, :subcategory_id, :toko_id, :deskripsi_lengkap, :harga_beli, :diskon, :stock, :special, :recommended, :top, :rating, :slug, :subsubcategory_id, :remove_foto_produk1, :remove_foto_produk2, :remove_foto_produk3, :remove_foto_produk4, :remove_foto_produk5, :block)
    end

end
