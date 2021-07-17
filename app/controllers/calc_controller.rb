class CalcController < ApplicationController
    include DescontoInssCalc

    #GET /calc/desconto/1000
    def desconto
        @resposta = {desconto_inss: calcula_desconto(params[:salario])} 
        respond_to do |format|
            format.json { render json: @resposta, status: :ok }
        end
    end
end