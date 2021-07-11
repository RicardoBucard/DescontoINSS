require "application_system_test_case"

class ProponentesTest < ApplicationSystemTestCase
  setup do
    @proponente = proponentes(:one)
  end

  test "visiting the index" do
    visit proponentes_url
    assert_selector "h1", text: "Proponentes"
  end

  test "creating a Proponente" do
    visit proponentes_url
    first("button").click

    fill_in "Bairro", with: @proponente.bairro
    fill_in "Cep", with: @proponente.cep
    fill_in "Cidade", with: @proponente.cidade
    fill_in "Cpf", with: @proponente.cpf
    fill_in "Data nascimento", with: @proponente.data_nascimento
    fill_in "Estado", with: @proponente.estado
    fill_in "Logradouro", with: @proponente.logradouro
    fill_in "Nome", with: @proponente.nome
    fill_in "Numero", with: @proponente.numero
    fill_in "Salario", with: @proponente.salario
    fill_in "Desconto inss", with: @proponente.desconto_inss
    fill_in "Telefone pessoal", with: @proponente.telefone_pessoal
    fill_in "Telefone referencia", with: @proponente.telefone_referencia
    click_on "Create Proponente"

    assert_text "Proponente foi criado com sucesso"
    click_on "Back"
  end

  test "updating a Proponente" do
    visit proponentes_url
    click_on "Editar", match: :first

    fill_in "Bairro", with: @proponente.bairro
    fill_in "Cep", with: @proponente.cep
    fill_in "Cidade", with: @proponente.cidade
    fill_in "Cpf", with: @proponente.cpf
    fill_in "Data nascimento", with: @proponente.data_nascimento
    fill_in "Estado", with: @proponente.estado
    fill_in "Logradouro", with: @proponente.logradouro
    fill_in "Nome", with: @proponente.nome
    fill_in "Numero", with: @proponente.numero
    fill_in "Salario", with: @proponente.salario
    fill_in "Desconto inss", with: @proponente.desconto_inss
    fill_in "Telefone pessoal", with: @proponente.telefone_pessoal
    fill_in "Telefone referencia", with: @proponente.telefone_referencia
    click_on "Update Proponente"

    assert_text "Proponente foi atualizado com sucesso"
    click_on "Back"
  end

  test "destroying a Proponente" do
    visit proponentes_url
    page.accept_confirm do
      click_on "Deletar", match: :first
    end

    assert_text "Proponente deletado com sucesso"
  end
end
