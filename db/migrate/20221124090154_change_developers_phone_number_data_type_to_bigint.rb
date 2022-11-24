class ChangeDevelopersPhoneNumberDataTypeToBigint < ActiveRecord::Migration[6.1]
  def change
    change_column :developers, :phone_number, :bigint
  end
end
