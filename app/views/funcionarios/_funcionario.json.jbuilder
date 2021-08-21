json.extract! funcionario, :id, :nome, :cpf, :salario, :created_at, :updated_at
json.url funcionario_url(funcionario, format: :json)
