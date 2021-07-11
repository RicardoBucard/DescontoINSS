class RemoveDescontoInssFromProponente < ActiveRecord::Migration[5.2]
  def change
    remove_column :proponentes, :desconto_inss, :integer
  end
end
