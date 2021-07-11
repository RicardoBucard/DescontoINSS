require 'test_helper'

class ProponenteTest < ActiveSupport::TestCase
  test "é um proponente válido" do
    proponente = Proponente.new(nome: "Madson dos Santos", cpf: 12345678960, data_nascimento: 1987-10-07, logradouro: "Rua Conde de Bonfim", numero: 250, bairro: "Tijuca", estado:"Rio de Janeiro", cidade: "Rio de Janeiro", cep: 34567890, telefone_pessoal:2196877113, telefone_referencia:21629908377, salario: 5000.0, desconto_inss: 558.95 )
    assert proponente.save
  end

end
