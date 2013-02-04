class CreateConceptos < ActiveRecord::Migration
  def change
    create_table :conceptos do |t|
      t.string :descripcion
      t.boolean :es_ingreso
      t.boolean :es_egreso

      t.timestamps
    end
  end
end
