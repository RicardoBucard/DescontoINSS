class Funcionario < 
    validates :nome, :cpf, :salario, presence: true
    validates :nome, length: { in: 5..60 }
    validates :cpf, length: { is: 14 }
    validates :cpf, uniqueness: true
    validates :salario, numericality: true
end
