class RenameTypeColumn < ActiveRecord::Migration[5.2]
  def change
  	rename_column :sites, :type, :upordown
  end
end
