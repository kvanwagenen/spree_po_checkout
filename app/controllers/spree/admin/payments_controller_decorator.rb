Spree::Admin::PaymentsController.class_eval do
  def po_paid
    @payment.state = "completed"
    @payment.save
    @payment.source.paid = true
    @payment.source.save
    flash[:success] = Spree.t(:successfully_marked_paid, :scope => 'po_checkout')
    redirect_to admin_order_payment_path(@order, @payment)
  end
end