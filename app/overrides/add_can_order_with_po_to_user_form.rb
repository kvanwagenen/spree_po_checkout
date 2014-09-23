Deface::Override.new(:virtual_path => "spree/admin/users/_form",
                     :name => "order_with_po",
                     :insert_bottom => "[data-hook='admin_user_form_fields']",
                     :partial => "spree/admin/users/order_with_po",
                     :disabled => false)