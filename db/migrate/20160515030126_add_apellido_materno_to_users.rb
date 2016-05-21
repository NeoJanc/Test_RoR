class AddApellidoMaternoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :apellido_materno, :string
  end
end
