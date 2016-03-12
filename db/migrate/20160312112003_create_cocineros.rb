class CreateCocineros < ActiveRecord::Migration
  def change
    create_table :cocineros do |t|
      t.string :nombre_cocinero
      t.string :apellido_1_cocinero
      t.string :apellido_2_cocinero
      t.string :dni_cocinero
      t.string :alias_cocinero

      t.timestamps null: false
    end
  end
end
