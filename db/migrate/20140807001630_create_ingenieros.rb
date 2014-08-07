class CreateIngenieros < ActiveRecord::Migration
  def change
    create_table :ingenieros do |t|
      t.string :nombrecompleto
      t.string :dependencia
      t.string :estudios
      t.references :proyectos, index: true

      t.timestamps
    end
  end
end
