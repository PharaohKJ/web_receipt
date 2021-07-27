class CreateBatchFiles < ActiveRecord::Migration[6.1]
  def change
    create_table :batch_files do |t|
      t.string :name

      t.timestamps
    end
  end
end
