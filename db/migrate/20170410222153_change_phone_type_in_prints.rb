class ChangePhoneTypeInPrints < ActiveRecord::Migration[5.0]
  def change
    change_column :prints, :contact_phone, :string
  end
end
