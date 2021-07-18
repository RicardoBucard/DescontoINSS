module DescontoInssCalc
    ALIQUOTA = {primeira: 0.075, segunda: 0.09, terceira: 0.12, quarta: 0.14} unless defined? ALIQUOTA
    FAIXA = {primeira: 1045.0, segunda: 2089.6, terceira: 3134.4, quarta:6101.06} unless defined? FAIXA
    def calcula_desconto(salario)
        salario = salario.to_f
        if salario <= FAIXA[:primeira]
            aliquota = salario * ALIQUOTA[:primeira]
            aliquota.round(2)
        elsif salario > FAIXA[:primeira] and salario <= FAIXA[:segunda]
            aliquota = (FAIXA[:primeira] * ALIQUOTA[:primeira]) + ((salario - FAIXA[:primeira])* ALIQUOTA[:segunda])
            aliquota.round(2)
        elsif salario > FAIXA[:segunda] and salario <= FAIXA[:terceira]
            aliquota= (FAIXA[:primeira] * ALIQUOTA[:primeira]) + ((FAIXA[:segunda] - FAIXA[:primeira]) * ALIQUOTA[:segunda]) + ((salario - FAIXA[:segunda]) * ALIQUOTA[:terceira])
            aliquota.round(2)
        elsif salario > FAIXA[:terceira] and salario <= FAIXA[:quarta]
            aliquota = (FAIXA[:primeira] * ALIQUOTA[:primeira]) + ((FAIXA[:segunda] - FAIXA[:primeira]) * ALIQUOTA[:segunda]) + ((FAIXA[:terceira] - FAIXA[:segunda]) * ALIQUOTA[:terceira]) + ((salario - FAIXA[:terceira]) * ALIQUOTA[:quarta])
            aliquota.round(2)
        else
            aliquota = (FAIXA[:primeira] * ALIQUOTA[:primeira]) + ((FAIXA[:segunda] - FAIXA[:primeira]) * ALIQUOTA[:segunda]) + ((FAIXA[:terceira] - FAIXA[:segunda]) * ALIQUOTA[:terceira]) + ((FAIXA[:quarta] - FAIXA[:terceira]) * ALIQUOTA[:quarta])
            aliquota.round(2)
        end
    end
end