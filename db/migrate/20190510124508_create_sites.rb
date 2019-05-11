class CreateSites < ActiveRecord::Migration[5.2]
  def change
    create_table :sites do |t|
      t.integer :suid
      t.integer :ffvl_id
      t.integer :number
      t.string :name
      t.string :surname
      t.string :zip
      t.string :city
      t.string :site_type
      t.string :type
      t.string :practice
      t.float :latitude
      t.float :longitude
      t.integer :altitude
      t.text :access
      t.integer :parking_distance
      t.integer :top_down_distance
      t.string :orientation
      t.string :favorable_wind
      t.string :unfavorable_wind
      t.text :ideal_conditions
      t.text :description
      t.text :restrictions
      t.string :air_region
      t.string :dangers
      t.integer :cross_number
      t.datetime :modification_date

      t.timestamps
    end
  end
end
