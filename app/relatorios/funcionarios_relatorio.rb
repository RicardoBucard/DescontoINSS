class FuncionariosRelatorio
    def self.faixas_salarial(min_salario, max_salario = nil)
        if max_salario == nil
            Funcionario.where("salario <= ?", min_salario).count
        else
            Funcionario.where("salario > ? AND salario <= ?", min_salario, max_salario).count
        end
    end
end