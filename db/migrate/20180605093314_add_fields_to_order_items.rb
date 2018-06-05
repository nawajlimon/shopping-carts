class AddFieldsToOrderItems < ActiveRecord::Migration[5.2]
  def change
    add_column :order_items, :size, :string
    add_column :order_items, :color, :string
  end
end
