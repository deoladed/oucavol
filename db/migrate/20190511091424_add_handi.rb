class AddHandi < ActiveRecord::Migration[5.2]
  def change
  	add_column :sites, :handi, :boolean
  	add_column :sites, :balise, :string
  	add_column :sites, :webcam, :string
  	add_column :sites, :signaletique, :boolean
  end
end
