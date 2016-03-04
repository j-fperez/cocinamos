class CreatePlatos < ActiveRecord::Migration
  def change
    create_table :platos do |t|
      t.string :nombre

      t.timestamps null: false
    end
  end
end
