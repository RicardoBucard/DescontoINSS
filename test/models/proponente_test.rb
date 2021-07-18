require 'test_helper'

class ProponenteTest < ActiveSupport::TestCase
  setup do
    @proponenteCorrect = proponentes(:one)
    @proponenteRepeatedCpf = proponentes(:two)
  end
  test "é um proponente válido e deve ser salvo no banco de dados" do
    proponente = Proponente.new(nome: @proponenteCorrect.nome, cpf: @proponenteCorrect.cpf, data_nascimento: @proponenteCorrect.data_nascimento, logradouro: @proponenteCorrect.logradouro, numero: @proponenteCorrect.numero, bairro: @proponenteCorrect.bairro, estado: @proponenteCorrect.estado, cidade: @proponenteCorrect.cidade, cep: @proponenteCorrect.cep, telefone_pessoal: @proponenteCorrect.telefone_pessoal, telefone_referencia: @proponenteCorrect.telefone_referencia, salario: @proponenteCorrect.salario, desconto_inss: @proponenteCorrect.desconto_inss)
    assert proponente.save
  end
  test "proponente tem cpf repetido e não deve ser salvo no banco de dados" do
    proponente = Proponente.new(nome: @proponenteRepeatedCpf.nome, cpf: @proponenteRepeatedCpf.cpf, data_nascimento: @proponenteRepeatedCpf.data_nascimento, logradouro: @proponenteRepeatedCpf.logradouro, numero: @proponenteRepeatedCpf.numero, bairro: @proponenteRepeatedCpf.bairro, estado: @proponenteRepeatedCpf.estado, cidade: @proponenteRepeatedCpf.cidade, cep: @proponenteRepeatedCpf.cep, telefone_pessoal: @proponenteRepeatedCpf.telefone_pessoal, telefone_referencia: @proponenteRepeatedCpf.telefone_referencia, salario: @proponenteRepeatedCpf.salario, desconto_inss: @proponenteRepeatedCpf.desconto_inss)
    assert_not proponente.save
  end

end
