class RemoveSalarioFromProponente < ActiveRecord::Migration[5.2]
  def change
    remove_column :proponentes, :salario, :integer
  end
end
