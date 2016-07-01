class Checkout < ApplicationMailer
  default from: "support@netvcc.co.id"

  def checkout_email(current_user, mycart, status, countcart)
    @user = current_user
    @mycart = mycart
    @status = status
    if countcart 
    @recentcart = Cart.where(:user_id => current_user.id).order("id desc").limit(countcart)
    mail(to: User.find(@mycart.user_id).email, subject: "Status Pemesanan #{@mycart.invoice} - #{@status} ")
    end
  end
end
