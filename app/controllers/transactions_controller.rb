class TransactionsController < ApplicationController
  before_action :set_transaction, only: [:show, :edit, :update, :destroy]
  skip_before_filter :verify_authenticity_token, :only => :record
  require 'nicepay'
  require 'uri'


  # GET /transactions
  # GET /transactions.json
  def index
    @transactions = Transaction.all
  end

  def updatetx
      Cart.where(:user_id => current_user.id, :state => 1).update_all(:state => 3)
      redirect_to '/status-pemesanan'
      mycart = Cart.where(:state => 3).first
      status = "Pembayaran telah dilakukan"
      Notifikasi.sample_email(current_user, mycart, status).deliver_later
  end

  def record
    @transaction = Transaction.new
    if request.post?
    @transaction.post = params
      @transaction.save
    end
  end
  def cek
    @sha = Digest::SHA256.hexdigest("IONPAYTESTIONPAYTEST01201607010900547679150033F49GnCMS1mFYlGXisbUDzVf2ATWCl9k3R++d5hDd3Frmuos/XLx8XhXpe+LDYAbpGKZYSwtlyyLOtS/8aD7A==")
    Nicepay.iMid=('IONPAYTEST')
    Nicepay.merchantKey=('33F49GnCMS1mFYlGXisbUDzVf2ATWCl9k3R++d5hDd3Frmuos/XLx8XhXpe+LDYAbpGKZYSwtlyyLOtS/8aD7A==')
    Nicepay.dbProcessUrl=("#{URI.parse(root_url)}/record")
    Nicepay.callBackUrl=("#{URI.parse(root_url)}/update")
    checkStatus = Nicepay::Api::CheckStatus.new(Nicepay.requestParam)
    Nicepay.setRequestParam('iMid', Nicepay.iMid)
    Nicepay.setRequestParam('referenceNo', current_user.cart.where(:state => 1).first.invoice)
    @currentcart = Cart.where(:user_id => current_user.id, :state => 1)
    @subtotal = []
    @currentcart.each do |c|
    @subtotal << c.subtotal
    end
    Nicepay.setRequestParam('amt', 3000)
    Nicepay.setRequestParam('tXid', current_user.cart.last.txid)
    Nicepay.setRequestParam('merchantToken', Nicepay.merchantTokenC)
    response = checkStatus.response
    if response["resultCd"].to_s == "0000"
        @status = response["status"].to_s
        @amount = response["amt"].to_s
        @ref = response["referenceNo"].to_s
        @trx = response["tXid"].to_s

        else
        @status = "\nOops! Check Status failed to generate! We have recorded the event. \nPlease try again later.\n\n"
        @result = response["resultCd"]
        @msg =  response["resultMsg"]
        end
      if @status == "0"
        redirect_to '/update'
      end
        Nicepay.flushParam
  end
  def va
    Nicepay.iMid=('VACCTCLOSE')
    Nicepay.merchantKey=('33F49GnCMS1mFYlGXisbUDzVf2ATWCl9k3R++d5hDd3Frmuos/XLx8XhXpe+LDYAbpGKZYSwtlyyLOtS/8aD7A==')
    Nicepay.dbProcessUrl=("#{URI.parse(root_url)}/record")
    Nicepay.callBackUrl=("#{URI.parse(root_url)}/update")
    requestVa   = Nicepay::Api::RequestVa.new(Nicepay.requestParam)
    Nicepay.setRequestParam('iMid', Nicepay.iMid)
    Nicepay.setRequestParam('payMethod', '02')
    Nicepay.setRequestParam('bankCd', 'CENA')
    Nicepay.setRequestParam('referenceNo','Invoice-7834')
    Nicepay.setRequestParam('description','Payment of ' + Nicepay.param('referenceNo')) # Description
    Nicepay.setRequestParam('goodsNm', Nicepay.param('description')) # goodsNm = Description
    Nicepay.addCart('https://www.nicepay.co.id/nicepay/images/cart.png', 'Glasses', 'Jumlah: 3', 1000)
    Nicepay.addCart('https://www.nicepay.co.id/nicepay/images/cart.png', 'Glasses', 'Jumlah: 1', 2000)
    Nicepay.setRequestParam('cartData', Nicepay.cartData)
    Nicepay.setRequestParam('amt', Nicepay.autoCountTotal)
    Nicepay.setRequestParam('currency', 'IDR')
    Nicepay.setRequestParam('billingNm', 'John Doe')
    Nicepay.setRequestParam('billingPhone', '02112341234')
    Nicepay.setRequestParam('billingEmail', 'john.doe@example.com')
    Nicepay.setRequestParam('billingAddr', 'Jl. Jend Sudirman')
    Nicepay.setRequestParam('billingCity', 'Jakarta Pusat')
    Nicepay.setRequestParam('billingState', 'DKI Jakarta')
    Nicepay.setRequestParam('billingPostCd', '10210')
    Nicepay.setRequestParam('billingCountry', 'Indonesia')

    Nicepay.setRequestParam('deliveryNm', 'John Doe')
    Nicepay.setRequestParam('deliveryPhone', '02112341234')
    Nicepay.setRequestParam('deliveryEmail', 'john.doe@example.com')
    Nicepay.setRequestParam('deliveryAddr', 'Jl. Jend Sudirman')
    Nicepay.setRequestParam('deliveryCity', 'Jakarta Pusat')
    Nicepay.setRequestParam('deliveryState', 'DKI Jakarta')
    Nicepay.setRequestParam('deliveryPostCd', '10210')
    Nicepay.setRequestParam('deliveryCountry', 'Indonesia')
    Nicepay.setRequestParam('userIP', Nicepay.userIp)
    Nicepay.setRequestParam('dbProcessUrl', Nicepay.dbProcessUrl)
    Nicepay.setRequestParam('callBackUrl', Nicepay.callBackUrl)
    Nicepay.setRequestParam('vat', 0)
    Nicepay.setRequestParam('fee', 0)
    Nicepay.setRequestParam('notaxAmt', 0)
    Nicepay.setRequestParam('vacctValidDt', Nicepay.vaExpiryDate(2)) # format: %Y%m%d
    Nicepay.setRequestParam('vacctValidTm', Nicepay.vaExpiryTime) # format: %H%M%S
    Nicepay.setRequestParam('merchantToken', Nicepay.merchantToken)
    response = requestVa.response
    if response["resultCd"].to_s == "0000"
        @van = response["bankVacctNo"].to_s
        @des = response["description"].to_s
        @ref = response["referenceNo"].to_s
        @txid = response["tXid"].to_s

    else response["resultCd"].to_s
        @status =  "\nOops! Virtual Account failed to generate! We have recorded the event. \nPlease try again later.\n\n"
        @code =  response["resultCd"]
        @msg =  response["resultMsg"]
    end
    Nicepay.flushParam
  end

  def cc
    Nicepay.iMid=('IONPAYTEST')
    Nicepay.merchantKey=('33F49GnCMS1mFYlGXisbUDzVf2ATWCl9k3R++d5hDd3Frmuos/XLx8XhXpe+LDYAbpGKZYSwtlyyLOtS/8aD7A==')
    Nicepay.dbProcessUrl=("#{URI.parse(root_url)}/record")
    Nicepay.callBackUrl=("#{URI.parse(root_url)}/waiting")
    chargeCard  = Nicepay::Api::ChargeCard.new(Nicepay.requestParam)
    Nicepay.setRequestParam('iMid', Nicepay.iMid)
    Nicepay.setRequestParam('payMethod', '01')
    Nicepay.setRequestParam('instmntMon', '1')
    Nicepay.setRequestParam('instmntType', '1')
    @invoice = []
    current_user.cart.where(:state => 1).each do |c|
      @invoice << c.invoice
    end
    @invoice = @invoice.to_sentence
    @ref = current_user.cart.where(:state => 1).first.invoice
    Nicepay.setRequestParam('referenceNo', @ref)
    Nicepay.setRequestParam('description','Payment of ' + @invoice) # Description
    Nicepay.setRequestParam('goodsNm', Nicepay.param('description')) # goodsNm = Description
    Cart.where(:state => 1, :user_id => current_user.id).each do |c|
    Nicepay.addCart((URI.parse(root_url) + Produk.find(c.produk_id).foto_produk1.url).to_s, "#{Produk.find(c.produk_id).nama_produk} + Ongkir", "Jumlah: #{c.jumlah}", c.subtotal)
    end
    @firstcart = Cart.where(:state => 1, :user_id => current_user.id).first.alamat_id
    @address = Alamat.find(@firstcart)
    Nicepay.setRequestParam('cartData', Nicepay.cartData)
    Nicepay.setRequestParam('amt', Nicepay.autoCountTotal)
    Nicepay.setRequestParam('currency', 'IDR')
    Nicepay.setRequestParam('billingNm', current_user.namalengkap)
    Nicepay.setRequestParam('billingPhone', @address.nomor_telepon)
    Nicepay.setRequestParam('billingEmail', current_user.email)
    Nicepay.setRequestParam('billingAddr', @address.alamat)
    Nicepay.setRequestParam('billingCity', @address.kota_sebagai)
    Nicepay.setRequestParam('billingState', @address.provinsi_sebagai)
    Nicepay.setRequestParam('billingPostCd', @address.kode_pos)
    Nicepay.setRequestParam('billingCountry', 'Indonesia')
    Nicepay.setRequestParam('deliveryNm', current_user.namalengkap)
    Nicepay.setRequestParam('deliveryPhone', @address.nomor_telepon)
    Nicepay.setRequestParam('deliveryEmail', current_user.email)
    Nicepay.setRequestParam('deliveryAddr', @address.alamat)
    Nicepay.setRequestParam('deliveryCity', @address.kota_sebagai)
    Nicepay.setRequestParam('deliveryState', @address.provinsi_sebagai)
    Nicepay.setRequestParam('deliveryPostCd', @address.kode_pos)
    Nicepay.setRequestParam('deliveryCountry', 'Indonesia')
    Nicepay.setRequestParam('userIP', Nicepay.userIp)
    Nicepay.setRequestParam('dbProcessUrl', Nicepay.dbProcessUrl)
    Nicepay.setRequestParam('callBackUrl', Nicepay.callBackUrl)
    Nicepay.setRequestParam('vat', 0)
    Nicepay.setRequestParam('fee', 0)
    Nicepay.setRequestParam('notaxAmt', 0)
    Nicepay.setRequestParam('merchantToken', Nicepay.merchantToken)
    response = chargeCard.response
    if response["resultCd"].to_s == "0000" && response["tXid"]
        @txid = response["tXid"].to_s
        Cart.where(:user_id => current_user.id, :state => 1).update_all(:txid => @txid)
        if Cart.where(:user_id => current_user.id, :state => 1).last.txid.present?
        redirect_to response["requestURL"].to_s + "?tXid=" + response["tXid"].to_s
        end
    else
        @status = "\nOops! Payment Page failed to generate! We have recorded the event. \nPlease try again later.\n\n"
        @code = response["resultCd"]
        @msg = response["resultMsg"]
    end


    # Flush request parameter
    Nicepay.flushParam
  end

  def show
  end

  # GET /transactions/new
  def new
    @transaction = Transaction.new
  end

  # GET /transactions/1/edit
  def edit
  end

  # POST /transactions
  # POST /transactions.json
  def create
    @transaction = Transaction.new(transaction_params)

    respond_to do |format|
      if @transaction.save
        format.html { redirect_to @transaction, notice: 'Transaction was successfully created.' }
        format.json { render :show, status: :created, location: @transaction }
      else
        format.html { render :new }
        format.json { render json: @transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transactions/1
  # PATCH/PUT /transactions/1.json
  def update
    respond_to do |format|
      if @transaction.update(transaction_params)
        format.html { redirect_to @transaction, notice: 'Transaction was successfully updated.' }
        format.json { render :show, status: :ok, location: @transaction }
      else
        format.html { render :edit }
        format.json { render json: @transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transactions/1
  # DELETE /transactions/1.json
  def destroy
    @transaction.destroy
    respond_to do |format|
      format.html { redirect_to transactions_url, notice: 'Transaction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transaction
      @transaction = Transaction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def transaction_params
      params.require(:transaction).permit(:get, :post)
    end
end
