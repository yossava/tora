class Checkout < ApplicationMailer
  default from: "support@on-line.co.id"

  def checkout_email(current_user, countcart)
    @status = "Petunjuk pembayaran"
    @recentcart = Cart.where(:user_id => current_user.id).last(countcart)
    mail(to: User.find(@recentcart.last.user_id).email, subject: "#{@subject}")
  end
end
