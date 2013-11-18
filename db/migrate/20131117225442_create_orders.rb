class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.text :shipping_address
      t.string :status, :default => 'customising'

      t.timestamps
    end
  end
end
