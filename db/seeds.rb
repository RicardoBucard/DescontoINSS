# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
nomes = ['Maria José da Silva', 'Maria da Silva', 'José da Silva', 'Madalena Vieira', 'João dos Anjos', 'Monica Pereira', 'Marina Joyce', 'Elis Maria', 'Roberto Ezequiel', 'Antonio Augusto dos Reis']
cpfs = ['111.111.111-11', '111.111.111-10', '111.111.111-12','111.111.111-13','111.111.111-14','111.111.111-15','111.111.111-16','111.111.111-17','111.111.111-19', '111.111.111-10']
data_nascimentos = ['2000-07-10', '2000-07-11', '1980-06-10','2001-12-30', '2010-11-20', '1995-03-01', '1989-02-15', '1984-08-04', '2000-10-12', '1991-11-26']
logradouros = ['Rua México', 'Rua México', 'Rua México', 'Rua João Afonso', 'Rua Belford Roxo','Rua Belford Roxo', 'Rua do Lavradio', 'Rua Gomes Freire', 'Rua Uruguai', 'Rua do Passeio']
numeros = [10, 50, 30, 350, 150, 49, 37, 26, 11, 19]
bairros = ['Centro', 'Centro', 'Centro', 'Humaitá', 'Copacabana', 'Copacabana', 'Centro', 'Centro', 'Tijuca', 'Centro']
cidades = 'Rio de Janeiro'
estados = 'Rio de Janeiro'
ceps = ['10000-000', '10000-000', '10000-000', '20000-000', '30000-000', '30000-000', '10000-001', '10000-002', '40000-000', '10000-003']
telefones_pessoais = ['(21)99678-9999', '(21)99678-9990', '(21)99678-9991', '(21)99678-9992', '(21)99678-9993', '(21)99678-9994', '(21)99678-9995', '(21)99678-9996', '(21)99678-9997', '(21)99678-9998']
telefones_referencia = ['(21)99678-9899', '(21)99678-9890', '(21)99678-9891', '(21)99678-9892', '(21)99678-9893', '(21)99678-9894', '(21)99678-9895', '(21)99678-9896', '(21)99678-9897', '(21)99678-9898']
salarios = [1045.0, 7500.0, 1045.0, 7500.0, 1045.0, 7500.0, 1045.0, 7500.0, 1045.0, 7500.0]
descontos_inss = [78.37, 713.1, 78.37, 713.1, 78.37, 713.1, 78.37, 713.1, 78.37, 713.1]

for index in 0..9 do
    Proponente.create!(nome: nomes[index], cpf: cpfs[index], data_nascimento: data_nascimentos[index], logradouro: logradouros[index], numero: numeros[index], bairro: bairros[index], cidade: cidades, estado: estados, cep: ceps[index], telefone_pessoal: telefones_pessoais[index], telefone_referencia: telefones_referencia[index], salario: salarios[index], desconto_inss: descontos_inss[index])
    Funcionario.create!(nome: nomes[index], cpf: cpfs[index], salario: salarios[index])
end