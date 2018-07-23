class TableNombre < ActiveRecord::Migration[5.2]
  def change
  	create_table :nombres
    add_column :nombres, :nombre, :string #nom de la table, #nom de la colonne , type de donnee
    add_column :nombres, :caracteristica, :string #nom de la table, #nom de la colonne , type de donnee
  end
end


