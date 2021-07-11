# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

nomes = ['Maria José da Silva', 'Maria da Silva', 'José da Silva', 'Madalena Vieira', 'João dos Anjos', 'Monica Pereira', 'Marina Joyce', 'Elis Maria', 'Roberto Ezequiel', 'Antonio Augusto dos Reis', 'Tiago Reis']
cpfs = [1111111111, 1111111110,1111111112,1111111113,1111111114,1111111115,1111111116,1111111117,1111111118, 1111111119]
data_nascimentos = ['2000-07-10', '2000-07-11', '1980-06-10','2001-12-30', '2010-11-20', '1995-03-01', '1989-02-15', '1984-08-04', '2000-10-12', '1991-11-26']
logradouros = ['Rua México', 'Rua México', 'Rua México', 'Rua João Afonso', 'Rua  Belford Roxo','Rua  Belford Roxo', 'Rua do Lavradio', 'Rua Gomes Freire', 'Rua Uruguai', 'Rua do Passeio']
numeros = [10, 50, 30, 350, 150, 49, 37, 26, 11, 19]
bairros = ['Centro', 'Centro', 'Centro', 'Humaitá', 'Copacabana', 'Copacabana', 'Centro', 'Centro', 'Tijuca', 'Centro']
cidades = 'Rio de Janeiro'
estados = 'Rio de Janeiro'
ceps = [1000000, 1000000, 1000000, 2000000, 3000000, 3000000, 1000001, 1000002, 4000000, 1000003]
telefones_pessoais = [21996789999, 21996789991, 21996789992, 21996789993, 21996789994, 21996789995, 21996789996, 21996789997, 21996789998, 21996789990]
telefones_referencia = [21986789999, 21986789991, 21986789992, 21986789993, 21986789994, 21986789995, 21986789996, 21986789997, 21986789998, 21986789990]
salarios = [1045.0, 7500.0, 1045.0, 7500.0, 1045.0, 7500.0, 1045.0, 7500.0, 1045.0, 7500.0]
descontos_inss = [78.37, 713.1, 78.37, 713.1, 78.37, 713.1, 78.37, 713.1, 78.37, 713.1]

for a in 0..9 do
    Proponente.create!(nome: nomes[a], cpf: cpfs[a], data_nascimento: data_nascimentos[a], logradouro: logradouros[a], numero: numeros[a], bairro: bairros[a], cidade: cidades, estado: estados, cep: ceps[a], telefone_pessoal: telefones_pessoais[a], telefone_referencia: telefones_referencia[a], salario: salarios[a], desconto_inss: descontos_inss[a])
end