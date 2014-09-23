class CreatePurchaseOrderCheckouts < ActiveRecord::Migration
  def change
    create_table :spree_purchase_order_checkouts do |t|
      t.belongs_to :payment
      t.string :po_number
      t.boolean :paid, :default => false
      t.timestamps
    end
  end
end
