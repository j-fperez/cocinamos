class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nombre_cliente
      t.string :apellido_1_cliente
      t.string :apellido_2_cliente
      t.string :dni_cliente
      t.string :alias_cliente
      t.string :direccion_cliente
      t.string :localidad_cliente
      t.string :provincia_cliente
      t.string :codigo_postal_cliente
      t.string :telefono_1_cliente
      t.string :telefono_2_cliente
      t.string :email_cliente

      t.timestamps null: false
    end
  end
end
