class LocationsTable < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.string :street_name
      t.string :street_address
    end
  end
end
