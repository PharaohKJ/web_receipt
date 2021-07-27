class RenameAddresseeColumnToReceipts < ActiveRecord::Migration[6.0]
  def change
    rename_column :receipts, :addressee, :customer_name
  end
end
