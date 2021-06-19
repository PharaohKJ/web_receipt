class AddUuidToReceipt < ActiveRecord::Migration[6.1]
  def change
    add_column :receipts, :uuid, :string
    add_index :receipts, :uuid
  end
end
