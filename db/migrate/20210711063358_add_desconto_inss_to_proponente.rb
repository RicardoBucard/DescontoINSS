class AddDescontoInssToProponente < ActiveRecord::Migration[5.2]
  def change
    add_column :proponentes, :desconto_inss, :integer
  end
end
