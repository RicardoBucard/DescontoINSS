class CreateProponentes < ActiveRecord::Migration[5.2]
  def change
    create_table :proponentes do |t|
      t.string :nome
      t.string :cpf
      t.date :data_nascimento
      t.string :logradouro
      t.integer :numero
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.string :cep
      t.string :telefone_pessoal
      t.string :telefone_referencia
      t.integer :salario

      t.timestamps
    end
  end
end
