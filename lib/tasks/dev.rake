namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?
      %x(rails db:drop)
      %x(rails db:create)
      %x(rails db:migrate)
      %x(rails db:seed)
      %x(rails dev:adiciona_funcionarios_redis)
    end
  end
  desc "Adiciona todos os funcionários ao Redis"
  task adiciona_funcionarios_redis: :environment do
    Funcionario.find_each do |funcionario|
      Rails.cache.write(funcionario.id, funcionario.salario)
    end
  end

end
