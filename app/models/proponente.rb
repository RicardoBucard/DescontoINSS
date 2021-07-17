class Proponente < ApplicationRecord
    validates :nome, :cpf, :data_nascimento, :logradouro, :numero, :bairro, :cidade, :estado, :cep, :telefone_pessoal, :telefone_referencia, :salario, presence: true
    validates :nome, length: { in: 5..60 }
    validates :cpf, length: { is: 11 }
    validates :cpf, numericality: true
    validates :cpf, uniqueness: true
    validates :logradouro, length: { in: 3..80 }
    validates :bairro, length: { in: 3..60 }
    validates :cidade, length: { in: 3..60 }
    validates :estado, length: { in: 3..40 }
    validates :cep, length: { is: 9 }
    validates :cep, numericality: true
    validates :telefone_pessoal, length: { in: 10..11 }
    validates :telefone_pessoal, numericality: true
    validates :telefone_referencia, length: { in: 10..11 }
    validates :telefone_referencia, numericality: true
    validates :salario, numericality: true
    validates :desconto_inss, numericality: true
    paginates_per 5
end
