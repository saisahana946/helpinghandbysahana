class CreateGetters < ActiveRecord::Migration[6.0]
  def change
    create_table :getters do |t|
      t.string :firstname
      t.string :lastname
      t.integer :contact
      t.string :location
      t.string :need
      t.string :image

      t.timestamps
    end
  end
end
