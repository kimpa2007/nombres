class TableNacionalidad < ActiveRecord::Migration[5.2]
  def change
  	create_table :nacionalidads
    add_column :nacionalidads, :nombre, :string #nom de la table, #nom de la colonne , type de donnee
    add_column :nacionalidads, :caracteristica, :string #nom de la table, #nom de la colonne , type de donnee
  end
end


