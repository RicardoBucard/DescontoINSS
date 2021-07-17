module DescontoInssCalc
    ALIQUOTA = {primeira: 0.075, segunda: 0.09, terceira: 0.12, quarta: 0.14} unless defined? ALIQUOTA
    def calcula_desconto(salario)
        salario = salario.to_f
        return salario * ALIQUOTA[:primeira]
    end
end