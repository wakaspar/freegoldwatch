class CreatePrints < ActiveRecord::Migration[5.0]
  def change
    create_table :prints do |t|
      t.string :name
      t.integer :quantity
      t.integer :order_state
      t.integer :contact_email
      t.integer :contact_phone

      t.timestamps
    end
  end
end
