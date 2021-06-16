class CreateReceipts < ActiveRecord::Migration[6.0]
  def change
    create_table :receipts do |t|
      t.string :no
      t.date :billing_date
      t.string :addressee
      t.integer :price
      t.string :proviso
      t.string :issuer_name
      t.string :issuer_address

      t.timestamps
    end
  end
end
