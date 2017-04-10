class CreatePins < ActiveRecord::Migration[5.0]
  def change
    create_table :pins do |t|
      t.string :name
      t.string :manufacturer
      t.integer :year
      t.integer :pbm_id

      t.timestamps
    end
  end
end
