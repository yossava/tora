class Notifikasi < ApplicationMailer
  default from: "support@netvcc.co.id"

  def sample_email(current_user, mycart, status)
    @user = current_user
    @mycart = mycart
    @status = status
    mail(to: User.find(@mycart.user_id).email, subject: "Status Pemesanan #{@mycart.invoice} - #{@status} ")
  end

  def checkout_email(current_user, status, countcart)
    @user = current_user
    @mycart = Cart.where(:user_id => current_user.id).order("id desc").limit(countcart)
    @status = status
    mail(to: User.find(@mycart.last.user_id).email, subject: "Status Pemesanan #{@mycart.last.invoice} - #{@status} ")
  end
  def pembayaranva_email(countcart, van, amount, tanggal, time, bank, current_user)
    @van = van
    @amount = amount
    @date = tanggal
    @time = time
    @bank = bank

    @mycart = Cart.where(:user_id => current_user.id).order("id desc").limit(countcart)
    mail(to: User.find(@mycart.last.user_id).email, subject: "Petunjuk Pembayaran #{@mycart.last.invoice}")
  end
end
