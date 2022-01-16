class CreateDonations < ActiveRecord::Migration[6.0]
  def change
    create_table :donations do |t|
      t.string :donar_name
      t.string :need_user
      t.integer :amount
      t.references :getter, null: false, foreign_key: true

      t.timestamps
    end
  end
end
