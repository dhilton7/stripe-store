class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
    	t.string :card_token, null: false
    	t.string :customer_id, null: false
    	t.string :stripe_charge_id, null: false
      t.string :email, null: false
    	t.integer :amount, null: false
    	t.references :product, index: true
      t.timestamps null: false
    end
  end
end
