class CreateDrivers < ActiveRecord::Migration[6.0]
  def change
    create_table :drivers do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.date :date
      t.time :time
      t.string :resort
      t.string :pass
      t.string :VenMo

      t.timestamps
    end
  end
end
