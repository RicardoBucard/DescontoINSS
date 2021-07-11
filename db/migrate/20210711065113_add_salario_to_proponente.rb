class AddSalarioToProponente < ActiveRecord::Migration[5.2]
  def change
    add_column :proponentes, :salario, :float
  end
end
