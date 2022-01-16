class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :party
      t.string :location
      t.date :date

      t.timestamps
    end
  end
end
