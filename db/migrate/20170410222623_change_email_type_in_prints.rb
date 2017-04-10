class ChangeEmailTypeInPrints < ActiveRecord::Migration[5.0]
  def change
    change_column :prints, :contact_email, :string
  end
end
