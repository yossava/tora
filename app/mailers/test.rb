class MyMailer < ActionMailer::Base
  def test_email
    @recipients = "vcckaskus@gmail.com"
    @from = "marketplace@netvcc.co.id"
    @subject = "test from the Rails Console"
    @body = "This is a test email"
  end
end

MyMailer::deliver_test_email