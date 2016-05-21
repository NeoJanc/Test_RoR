class AddApellidoPaternoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :apellido_paterno, :string
  end
end
