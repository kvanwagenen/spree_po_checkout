module Spree
  class PurchaseOrderCheckout < ActiveRecord::Base
    belongs_to :payment

    after_save :update_order_po

    def update_order_po
      if po_number && payment && payment.order
        payment.order.po_number = po_number
      end
    end
  end
end