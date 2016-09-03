class FinancelogsController < ApplicationController
  before_action :set_financelog, only: [:show, :edit, :update, :destroy]

  # GET /financelogs
  # GET /financelogs.json
  def index
    @financelogs = Financelog.all
  end

  # GET /financelogs/1
  # GET /financelogs/1.json
  def show
  end

  # GET /financelogs/new
  def new
    @financelog = Financelog.new
  end

  # GET /financelogs/1/edit
  def edit
  end

  # POST /financelogs
  # POST /financelogs.json
  def create
    @financelog = Financelog.new(financelog_params)

    respond_to do |format|
      if @financelog.save && @financelog.keterangan.nil?
        User.find(params[:id]).update(:saldo => 0)
        format.html { redirect_to :back, notice: 'Financelog was successfully created.' }
        format.json { render :show, status: :created, location: @financelog }
      elsif @financelog.save && @financelog.keterangan.present? && @financelog.toko_id.nil?
        Konfirmasi.find(params[:id]).delete
        format.html { redirect_to "/admin/konfirmasi", notice: 'Konfirmasi diterima' }
      elsif @financelog.save && @financelog.keterangan.present? && @financelog.toko_id.present?
        @konf = Konfirmasi.find(params[:id])
        Cart.find(@konf.cart_id).update(:state => 3)
        @konf.delete
        format.html { redirect_to "/admin/konfirmasi", notice: 'Konfirmasi diterima' }
      else
        format.html { render :new }
        format.json { render json: @financelog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /financelogs/1
  # PATCH/PUT /financelogs/1.json
  def update
    respond_to do |format|
      if @financelog.update(financelog_params)
        format.html { redirect_to @financelog, notice: 'Financelog was successfully updated.' }
        format.json { render :show, status: :ok, location: @financelog }
      else
        format.html { render :edit }
        format.json { render json: @financelog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /financelogs/1
  # DELETE /financelogs/1.json
  def destroy
    @financelog.destroy
    respond_to do |format|
      format.html { redirect_to financelogs_url, notice: 'Financelog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_financelog
      @financelog = Financelog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def financelog_params
      params.require(:financelog).permit(:user_id, :toko_id, :jumlah, :produk_id, :keterangan)
    end
end
