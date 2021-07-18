require 'test_helper'

class ProponenteTest < ActiveSupport::TestCase
  test "é um proponente válido e deve ser salvo no banco de dados" do
    proponente = Proponente.create(nome: 'Maria José', cpf: '234.432.689-61', data_nascimento: '2000-07-10', logradouro: 'Rua México', numero: 10, bairro: 'Centro', estado: 'Rio de Janeiro', cidade: 'Rio de Janeiro', cep: '10000-000', telefone_pessoal: '(21)99678-9999', telefone_referencia: '(21)99678-9990', salario: 1045.0, desconto_inss: 78.37)
    assert proponente.save
  end

  test "proponente tem algum campo em branco não salva" do
    proponente = Proponente.create(nome: 'Maria José', data_nascimento: '2000-07-10', logradouro: 'Rua México', numero: 10, bairro: 'Centro', estado: 'Rio de Janeiro', cidade: 'Rio de Janeiro', cep: '10000-000', telefone_pessoal: '(21)99678-9999', telefone_referencia: '(21)99678-9990', salario: 1045.0, desconto_inss: 78.37)
    assert_not proponente.save
  end
  
  test "proponente tem nome com mais caracteres que 60 e não salva" do
    proponente = Proponente.create(nome: 'Pedro de Alcântara Francisco Antônio João Carlos Xavier de Paula Miguel Rafael Joaquim José Gonzaga Pascoal Cipriano Serafim de Bragança e Bourbon', cpf: '234.432.689-61', data_nascimento: '2000-07-10', logradouro: 'Rua México', numero: 10, bairro: 'Centro', estado: 'Rio de Janeiro', cidade: 'Rio de Janeiro', cep: '10000-000', telefone_pessoal: '(21)99678-9999', telefone_referencia: '(21)99678-9990', salario: 1045.0, desconto_inss: 78.37)
    assert_not proponente.save
  end

  test "proponente tem nome com menos caracteres que 5 e não salva" do
    proponente = Proponente.create(nome: 'José', cpf: '235.432.689-61', data_nascimento: '2000-07-10', logradouro: 'Rua México', numero: 10, bairro: 'Centro', estado: 'Rio de Janeiro', cidade: 'Rio de Janeiro', cep: '10000-000', telefone_pessoal: '(21)99678-9999', telefone_referencia: '(21)99678-9990', salario: 1045.0, desconto_inss: 78.37)
    assert_not proponente.save
  end
  
  test "proponente tem cpf com menos caracteres que 14 e não salva" do
    proponente = Proponente.create(nome: 'Maria José', cpf: '25.432.689-61', data_nascimento: '2000-07-10', logradouro: 'Rua México', numero: 10, bairro: 'Centro', estado: 'Rio de Janeiro', cidade: 'Rio de Janeiro', cep: '10000-000', telefone_pessoal: '(21)99678-9999', telefone_referencia: '(21)99678-9990', salario: 1045.0, desconto_inss: 78.37)
    assert_not proponente.save
  end

  test "proponente tem cpf com mais caracteres que 14 e não salva" do
    proponente = Proponente.create(nome: 'Maria José', cpf: '2305.0632.689-61', data_nascimento: '2000-07-10', logradouro: 'Rua México', numero: 10, bairro: 'Centro', estado: 'Rio de Janeiro', cidade: 'Rio de Janeiro', cep: '10000-000', telefone_pessoal: '(21)99678-9999', telefone_referencia: '(21)99678-9990', salario: 1045.0, desconto_inss: 78.37)
    assert_not proponente.save
  end
  
  test "proponente tem logradouro com mais caracteres que 50 e não salva" do
    proponente = Proponente.create(nome: 'Maria José', cpf: '234.462.689-61', data_nascimento: '2000-07-10', logradouro: 'Rua Llanfairpwllgwyngyllgogerychwyrndrobwllllantysiliogogogoch', numero: 10, bairro: 'Centro', estado: 'Rio de Janeiro', cidade: 'Rio de Janeiro', cep: '10000-000', telefone_pessoal: '(21)99678-9999', telefone_referencia: '(21)99678-9990', salario: 1045.0, desconto_inss: 78.37)
    assert_not proponente.save
  end
  
  test "proponente tem logradouro com menos caracteres que 3 e não salva" do
    proponente = Proponente.create(nome: 'Maria José', cpf: '235.463.689-61', data_nascimento: '2000-07-10', logradouro: 'ru', numero: 10, bairro: 'Centro', estado: 'Rio de Janeiro', cidade: 'Rio de Janeiro', cep: '10000-000', telefone_pessoal: '(21)99678-9999', telefone_referencia: '(21)99678-9990', salario: 1045.0, desconto_inss: 78.37)
    assert_not proponente.save
  end

  test "proponente tem bairro com mais caracteres que 30 e não salva" do
    proponente = Proponente.create(nome: 'Maria José', cpf: '235.463.689-61', data_nascimento: '2000-07-10', logradouro: 'Rua México', numero: 10, bairro: 'Llanfairpwllgwyngyllgogerychwyrndrobwllllantysiliogogogoch', estado: 'Rio de Janeiro', cidade: 'Rio de Janeiro', cep: '10000-000', telefone_pessoal: '(21)99678-9999', telefone_referencia: '(21)99678-9990', salario: 1045.0, desconto_inss: 78.37)
    assert_not proponente.save
  end

  test "proponente tem bairro com menos caracteres que 3 e não salva" do
    proponente = Proponente.create(nome: 'Maria José', cpf: '235.463.689-61', data_nascimento: '2000-07-10', logradouro: 'Rua México', numero: 10, bairro: 'Ce', estado: 'Rio de Janeiro', cidade: 'Rio de Janeiro', cep: '10000-000', telefone_pessoal: '(21)99678-9999', telefone_referencia: '(21)99678-9990', salario: 1045.0, desconto_inss: 78.37)
    assert_not proponente.save
  end

  test "proponente tem cidade com mais caracteres que 30 e não salva" do
    proponente = Proponente.create(nome: 'Maria José', cpf: '235.463.689-61', data_nascimento: '2000-07-10', logradouro: 'Rua México', numero: 10, bairro: 'Centro', estado: 'Rio de Janeiro', cidade: 'São José do Vale do Rio Preto do Norte', cep: '10000-000', telefone_pessoal: '(21)99678-9999', telefone_referencia: '(21)99678-9990', salario: 1045.0, desconto_inss: 78.37)
    assert_not proponente.save
  end

  test "proponente tem cidade com menos caracteres que 3 e não salva" do
    proponente = Proponente.create(nome: 'Maria José', cpf: '235.463.689-61', data_nascimento: '2000-07-10', logradouro: 'Rua México', numero: 10, bairro: 'Centro', estado: 'Rio de Janeiro', cidade: 'Sé', cep: '10000-000', telefone_pessoal: '(21)99678-9999', telefone_referencia: '(21)99678-9990', salario: 1045.0, desconto_inss: 78.37)
    assert_not proponente.save
  end

  test "proponente tem estado com mais caracteres que 30 e não salva" do
    proponente = Proponente.create(nome: 'Maria José', cpf: '235.463.689-61', data_nascimento: '2000-07-10', logradouro: 'Rua México', numero: 10, bairro: 'Centro', estado: 'São José do Vale do Rio Preto do Norte', cidade: 'Rio de Janeiro', cep: '10000-000', telefone_pessoal: '(21)99678-9999', telefone_referencia: '(21)99678-9990', salario: 1045.0, desconto_inss: 78.37)
    assert_not proponente.save
  end

  test "proponente tem estado com menos caracteres que 3 e não salva" do
    proponente = Proponente.create(nome: 'Maria José', cpf: '235.463.689-61', data_nascimento: '2000-07-10', logradouro: 'Rua México', numero: 10, bairro: 'Centro', estado: 'RJ', cidade: 'Rio de Janeiro', cep: '10000-000', telefone_pessoal: '(21)99678-9999', telefone_referencia: '(21)99678-9990', salario: 1045.0, desconto_inss: 78.37)
    assert_not proponente.save
  end

  test "proponente tem cep com menos ou mais caracteres que 9 e não salva" do
    proponente = Proponente.create(nome: 'Maria José', cpf: '225.432.689-61', data_nascimento: '2000-07-10', logradouro: 'Rua México', numero: 10, bairro: 'Centro', estado: 'Rio de Janeiro', cidade: 'Rio de Janeiro', cep: '10000-0001', telefone_pessoal: '(21)99678-9999', telefone_referencia: '(21)99678-9990', salario: 1045.0, desconto_inss: 78.37)
    assert_not proponente.save
  end

  test "proponente tem telefone_pessoal com menos caracteres que 13 e não salva" do
    proponente = Proponente.create(nome: 'Maria José', cpf: '225.432.689-61', data_nascimento: '2000-07-10', logradouro: 'Rua México', numero: 10, bairro: 'Centro', estado: 'Rio de Janeiro', cidade: 'Rio de Janeiro', cep: '10000-001', telefone_pessoal: '(21)99678-99', telefone_referencia: '(21)99678-9990', salario: 1045.0, desconto_inss: 78.37)
    assert_not proponente.save
  end

  test "proponente tem telefone_pessoal mais caracteres que 14 e não salva" do
    proponente = Proponente.create(nome: 'Maria José', cpf: '225.432.689-61', data_nascimento: '2000-07-10', logradouro: 'Rua México', numero: 10, bairro: 'Centro', estado: 'Rio de Janeiro', cidade: 'Rio de Janeiro', cep: '10000-001', telefone_pessoal: '(21)99678-99990', telefone_referencia: '(21)99678-9990', salario: 1045.0, desconto_inss: 78.37)
    assert_not proponente.save
  end

  test "proponente tem telefone_referencia com menos caracteres que 13 e não salva" do
    proponente = Proponente.create(nome: 'Maria José', cpf: '225.432.689-61', data_nascimento: '2000-07-10', logradouro: 'Rua México', numero: 10, bairro: 'Centro', estado: 'Rio de Janeiro', cidade: 'Rio de Janeiro', cep: '10000-001', telefone_pessoal: '(21)99678-9999', telefone_referencia: '(21)99678-90', salario: 1045.0, desconto_inss: 78.37)
    assert_not proponente.save
  end

  test "proponente tem telefone_referencia mais caracteres que 14 e não salva" do
    proponente = Proponente.create(nome: 'Maria José', cpf: '225.432.689-61', data_nascimento: '2000-07-10', logradouro: 'Rua México', numero: 10, bairro: 'Centro', estado: 'Rio de Janeiro', cidade: 'Rio de Janeiro', cep: '10000-001', telefone_pessoal: '(21)99678-9999', telefone_referencia: '(21)99678-99907', salario: 1045.0, desconto_inss: 78.37)
    assert_not proponente.save
  end

  test "campo nome não é do tipo string e não salva" do
    proponente = Proponente.create(nome: 1, cpf: '225.432.689-61', data_nascimento: '2000-07-10', logradouro: 'Rua México', numero: 10, bairro: 'Centro', estado: 'Rio de Janeiro', cidade: 'Rio de Janeiro', cep: '10000-000', telefone_pessoal: '(21)99678-9999', telefone_referencia: '(21)99678-9990', salario: 1045.0, desconto_inss: 78.37)
    assert_not proponente.save
  end
  
  test "campo cpf não é do tipo string e não salva" do
    proponente = Proponente.create(nome: 'Maria José', cpf: 22543268961, data_nascimento: '2000-07-10', logradouro: 'Rua México', numero: 10, bairro: 'Centro', estado: 'Rio de Janeiro', cidade: 'Rio de Janeiro', cep: '10000-000', telefone_pessoal: '(21)99678-9999', telefone_referencia: '(21)99678-9990', salario: 1045.0, desconto_inss: 78.37)
    assert_not proponente.save
  end
  test "campo cep não é do tipo string e não salva" do
    proponente = Proponente.create(nome: 'Maria José', cpf: '225.432.689-61', data_nascimento: '2000-07-10', logradouro: 'Rua México', numero: 10, bairro: 'Centro', estado: 'Rio de Janeiro', cidade: 'Rio de Janeiro', cep: 10000-000, telefone_pessoal: '(21)99678-9999', telefone_referencia: '(21)99678-9990', salario: 1045.0, desconto_inss: 78.37)
    assert_not proponente.save
  end
  
  test "campo logradouro não é do tipo string e não salva" do
    proponente = Proponente.create(nome: 'Maria José', cpf: '225.432.689-61', data_nascimento: '2000-07-10', logradouro: 1, numero: 10, bairro: 'Centro', estado: 'Rio de Janeiro', cidade: 'Rio de Janeiro', cep: '10000-000', telefone_pessoal: '(21)99678-9999', telefone_referencia: '(21)99678-9990', salario: 1045.0, desconto_inss: 78.37)
    assert_not proponente.save
  end
  
  test "campo bairro não é do tipo string e não salva" do
    proponente = Proponente.create(nome: 'Maria José', cpf: '225.432.689-61', data_nascimento: '2000-07-10', logradouro: 'Rua México', numero: 10, bairro: 1, estado: 'Rio de Janeiro', cidade: 'Rio de Janeiro', cep: '10000-000', telefone_pessoal: '(21)99678-9999', telefone_referencia: '(21)99678-9990', salario: 1045.0, desconto_inss: 78.37)
    assert_not proponente.save
  end

  test "campo estado não é do tipo string e não salva" do
    proponente = Proponente.create(nome: 'Maria José', cpf: '225.432.689-61', data_nascimento: '2000-07-10', logradouro: 'Rua México', numero: 10, bairro: 'Centro', estado: 1, cidade: 'Rio de Janeiro', cep: '10000-000', telefone_pessoal: '(21)99678-9999', telefone_referencia: '(21)99678-9990', salario: 1045.0, desconto_inss: 78.37)
    assert_not proponente.save
  end

  test "campo cidade não é do tipo string e não salva" do
    proponente = Proponente.create(nome: 'Maria José', cpf: '225.432.689-61', data_nascimento: '2000-07-10', logradouro: 'Rua México', numero: 10, bairro: 'Centro', estado: 'Rio de Janeiro', cidade: 1, cep: '10000-000', telefone_pessoal: '(21)99678-9999', telefone_referencia: '(21)99678-9990', salario: 1045.0, desconto_inss: 78.37)
    assert_not proponente.save
  end
  
  test "campo data_nascimento não é do tipo date e não salva" do
    proponente = Proponente.create(nome: 'Maria José', cpf: '225.432.689-61', data_nascimento: 'teste', logradouro: 'Rua México', numero: 10, bairro: 'Centro', estado: 'Rio de Janeiro', cidade: 'Rio de Janeiro', cep: '10000-000', telefone_pessoal: '(21)99678-9999', telefone_referencia: '(21)99678-9990', salario: 1045.0, desconto_inss: 78.37)
    assert_not proponente.save
  end

  test "campo telefone_pessoal não é do tipo string e não salva" do
    proponente = Proponente.create(nome: 'Maria José', cpf: '225.432.689-61', data_nascimento: '2000-07-10', logradouro: 'Rua México', numero: 10, bairro: 'Centro', estado: 'Rio de Janeiro', cidade: 'Rio de Janeiro', cep: '10000-000', telefone_pessoal: 21996789999, telefone_referencia: '(21)99678-9990', salario: 1045.0, desconto_inss: 78.37)
    assert_not proponente.save
  end
  
  test "campo telefone_referencia não é do tipo date e não salva" do
    proponente = Proponente.create(nome: 'Maria José', cpf: '225.432.689-61', data_nascimento: '2000-07-10', logradouro: 'Rua México', numero: 10, bairro: 'Centro', estado: 'Rio de Janeiro', cidade: 'Rio de Janeiro', cep: '10000-000', telefone_pessoal: '(21)99678-9999', telefone_referencia: 21996789990, salario: 1045.0, desconto_inss: 78.37)
    assert_not proponente.save
  end
  
  test "campo numero não é do tipo int e não salva" do
    proponente = Proponente.create(nome: 'Maria José', cpf: '225.432.689-61', data_nascimento: '2000-07-10', logradouro: 'Rua México', numero: 'teste', bairro: 'Centro', estado: 'Rio de Janeiro', cidade: 'Rio de Janeiro', cep: '10000-000', telefone_pessoal: '(21)99678-9999', telefone_referencia: '(21)99678-9990', salario: 1045.0, desconto_inss: 78.37)
    assert_not proponente.save
  end
  test "campo salario não é do tipo float e não salva" do
    proponente = Proponente.create(nome: 'Maria José', cpf: '225.432.689-61', data_nascimento: '2000-07-10', logradouro: 'Rua México', numero: 10, bairro: 'Centro', estado: 'Rio de Janeiro', cidade: 'Rio de Janeiro', cep: '10000-000', telefone_pessoal: '(21)99678-9999', telefone_referencia: '(21)99678-9990', salario: 'teste', desconto_inss: 78.37)
    assert_not proponente.save
  end
  test "campo desconto_inss não é do tipo float e não salva" do
    proponente = Proponente.create(nome: 'Maria José', cpf: '225.432.689-61', data_nascimento: '2000-07-10', logradouro: 'Rua México', numero: 10, bairro: 'Centro', estado: 'Rio de Janeiro', cidade: 'Rio de Janeiro', cep: '10000-000', telefone_pessoal: '(21)99678-9999', telefone_referencia: '(21)99678-9990', salario: 1045.0, desconto_inss: 'teste')
    assert_not proponente.save
  end

  test "proponente tem cpf repetido e não deve ser salvo no banco de dados" do
    proponente = Proponente.create(nome: 'Maria José da Silva', cpf: '789.432.689-61', data_nascimento: '2000-07-10', logradouro: 'Rua México', numero: 10, bairro: 'Centro', estado: 'Rio de Janeiro', cidade: 'Rio de Janeiro', cep: '10000-000', telefone_pessoal: '(21)99678-9999', telefone_referencia: '(21)99678-9990', salario: 1045.0, desconto_inss: 78.37)
    proponenteCpfRepetido = Proponente.create(nome: 'Ana Matos', cpf: '789.432.689-61', data_nascimento: '1990-08-14', logradouro: 'Rua João Afonso', numero: 49, bairro: 'Humaitá', estado: 'Rio de Janeiro', cidade: 'Rio de Janeiro', cep: '50000-000', telefone_pessoal: '(21)99678-9229', telefone_referencia: '(21)99678-3220', salario: 1045.0, desconto_inss: 78.37)
    proponente.save
    assert_not proponenteCpfRepetido.save
  end

end
