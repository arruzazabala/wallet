class CreateMovimientos < ActiveRecord::Migration
  def change
    create_table :movimientos do |t|
      t.references :concepto
      t.integer :mes
      t.integer :anio
      t.float :monto

      t.timestamps
    end
    add_index :movimientos, :concepto_id
  end
end
