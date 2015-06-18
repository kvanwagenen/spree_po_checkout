Spree::Api::ApiHelpers.class_eval do 
  mattr_accessor :order_attributes
end
Spree::Api::ApiHelpers.order_attributes = Spree::Api::ApiHelpers.order_attributes | [:po_number]