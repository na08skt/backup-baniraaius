class CreateShippingAdresses < ActiveRecord::Migration[6.1]
  def change
    create_table :shipping_adresses do |t|
      t.string :adress_name
      t.string :post_code
      t.string :adress

      t.timestamps
    end
  end
end
