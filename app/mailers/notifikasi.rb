class Notifikasi < ApplicationMailer
  default from: "support@netvcc.co.id"

  def sample_email(current_user, mycart, status)
    @user = current_user
    @mycart = mycart
    @status = status
    mail(to: User.find(@mycart.user_id).email, subject: "Status Pemesanan #{@mycart.invoice} - #{@status} ")
  end
  def checkout_email(current_user, countcart)
    @status = "Petunjuk pembayaran"
    @recentcart = Cart.where(:user_id => current_user.id).last(countcart)
    mail(to: User.find(@recentcart.last.user_id).email, subject: "#{@subject}")
  end
end
