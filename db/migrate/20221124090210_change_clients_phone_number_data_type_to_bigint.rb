class ChangeClientsPhoneNumberDataTypeToBigint < ActiveRecord::Migration[6.1]
  def change
    change_column :clients, :phone_number, :bigint
  end
end
