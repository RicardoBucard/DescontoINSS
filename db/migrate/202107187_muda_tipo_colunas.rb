class MudaTipoColunas < ActiveRecord::Migration[5.2]
    def up
      change_column :proponentes, :salario, :decimal
      change_column :proponentes, :desconto_inss, :decimal
    end
    def down
      change_column :proponentes, :salario, :float
      change_column :proponentes, :desconto_inss, :float
    end
  end