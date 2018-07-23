class CreateJoinTableNombresNacionalidades < ActiveRecord::Migration[5.2]
  def change
    create_join_table :nombres, :nacionalidads do |t|
      # t.index [:nombre_id, :nacionalidad_id]
      # t.index [:nacionalidad_id, :nombre_id]
    end
  end
end
