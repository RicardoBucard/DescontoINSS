class Proponente < ApplicationRecord
    validates :nome, :cpf, :data_nascimento, :logradouro, :numero, :bairro, :cidade, :estado, :cep, :telefone_pessoal, :telefone_referencia, :salario, :desconto_inss, presence: true
    validates :nome, length: { in: 5..60 }
    validates :cpf, length: { is: 14 }
    validates :cpf, uniqueness: true
    validates :logradouro, length: { in: 3..50 }
    validates :bairro, length: { in: 3..30 }
    validates :cidade, length: { in: 3..30 }
    validates :estado, length: { in: 3..30 }
    validates :cep, length: { is: 9 }
    validates :telefone_pessoal, length: { in: 13..14 }
    validates :telefone_referencia, length: { in: 13..14 }
    validates :numero, numericality: true
    validates :salario, numericality: true
    validates :desconto_inss, numericality: true
    paginates_per 5
end
