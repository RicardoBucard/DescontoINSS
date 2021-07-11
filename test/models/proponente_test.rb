require 'test_helper'

class ProponenteTest < ActiveSupport::TestCase
  setup do
    @proponenteCorrect = proponentes(:one)
    @proponenteMissing = proponentes(:two)
  end
  test "é um proponente válido e deve ser salvo no banco de dados" do
    proponente = Proponente.new(nome: @proponenteCorrect.nome, cpf: @proponenteCorrect.cpf, data_nascimento: @proponenteCorrect.data_nascimento, logradouro: @proponenteCorrect.logradouro, numero: @proponenteCorrect.numero, bairro: @proponenteCorrect.bairro, estado: @proponenteCorrect.estado, cidade: @proponenteCorrect.cidade, cep: @proponenteCorrect.cep, telefone_pessoal: @proponenteCorrect.telefone_pessoal, telefone_referencia: @proponenteCorrect.telefone_referencia, salario: @proponenteCorrect.salario, desconto_inss: @proponenteCorrect.desconto_inss)
    assert proponente.save
  end
  test "proponente tem cpf vazio e não deve ser salvo no banco de dados" do
    proponente = Proponente.new(nome: @proponenteMissing.nome, cpf: @proponenteMissing.cpf, data_nascimento: @proponenteMissing.data_nascimento, logradouro: @proponenteMissing.logradouro, numero: @proponenteMissing.numero, bairro: @proponenteMissing.bairro, estado: @proponenteMissing.estado, cidade: @proponenteMissing.cidade, cep: @proponenteMissing.cep, telefone_pessoal: @proponenteMissing.telefone_pessoal, telefone_referencia: @proponenteMissing.telefone_referencia, salario: @proponenteMissing.salario, desconto_inss: @proponenteMissing.desconto_inss)
    assert_not proponente.save
  end
  test ""

end
