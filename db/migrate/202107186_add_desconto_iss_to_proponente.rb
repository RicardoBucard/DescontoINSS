class AddDescontoIssToProponente < ActiveRecord::Migration[5.2]
  def change
    add_column :proponentes, :desconto_inss, :float
  end
end
