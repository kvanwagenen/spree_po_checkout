module Spree
  class PurchaseOrderPayments < PaymentMethod
    def payment_source_class
      PurchaseOrderCheckout
    end

    def authorize(amount, source, gateway_options)
      order_number = gateway_options[:order_id][/(\w+)-/,1]
      order = Order.find_by_number(order_number)
      if order
        order.po_number = source.po_number
        order.save
        return OpenStruct.new({:success? => true})
      else
        return OpenStruct.new({:success? => false})
      end
    end

    def auto_capture
      false
    end

    def payment_profiles_supported?
      true
    end
  end
end