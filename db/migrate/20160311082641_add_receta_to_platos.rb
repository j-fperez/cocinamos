class AddRecetaToPlatos < ActiveRecord::Migration
  def change
    add_column :platos, :receta, :text
  end
end
