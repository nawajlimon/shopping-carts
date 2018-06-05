class AddFieldsToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :description, :string
    add_column :products, :category, :string
    add_column :products, :sizes, :string, array: true, default: []
    add_column :products, :colors, :string, array: true, default: []
  end
end
