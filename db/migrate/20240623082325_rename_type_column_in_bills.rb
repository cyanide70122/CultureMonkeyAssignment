class RenameTypeColumnInBills < ActiveRecord::Migration[5.0]
  def change
    rename_column :bills, :type, :bill_type
  end
end
