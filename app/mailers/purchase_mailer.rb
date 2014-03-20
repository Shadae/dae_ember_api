class PurchaseMailer < ActionMailer::Base
  default from: "from@example.com"

  def thank_you(checkout_id)
    @checkout = Checkout.find(checkout_id)
    mail(to: "#{@checkout.email}", subject: "Thank you for purchase!")
  end
end
