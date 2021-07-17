class Proponente < ApplicationRecord
    validates :nome, :cpf, :data_nascimento, :logradouro, :numero, :bairro, :cidade, :estado, :cep, :telefone_pessoal, :telefone_referencia, :salario, :desconto_inss, presence: true
    paginates_per 5
end
