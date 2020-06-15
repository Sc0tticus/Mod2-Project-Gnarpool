class CreateRides < ActiveRecord::Migration[6.0]
  def change
    create_table :rides do |t|
      t.references :Rider, null: false, foreign_key: true
      t.references :Driver, null: false, foreign_key: true

      t.timestamps
    end
  end
end
