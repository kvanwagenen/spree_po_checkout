Spree::Order.class_eval do
  attr_accessible :po_number

  alias_method :orig_available_payment_methods, :available_payment_methods

  def available_payment_methods
    orig_available_payment_methods
    if !user || !user.can_order_with_po
      @available_payment_methods.delete_if{|method|method.class == Spree::PurchaseOrderPayments}
    end
    @available_payment_methods
  end
end