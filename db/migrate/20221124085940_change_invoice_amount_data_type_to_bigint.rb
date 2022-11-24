class ChangeInvoiceAmountDataTypeToBigint < ActiveRecord::Migration[6.1]
  def change
    change_column :invoices, :amount, :bigint
  end
end
