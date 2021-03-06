class ProponentesController < ApplicationController
  include DescontoInssCalc
  skip_before_action :verify_authenticity_token
  before_action :set_proponente, only: %i[ show edit update destroy ]
  before_action :set_desconto, only: %i[ create update ]

  def set_desconto
    params[:proponente][:desconto_inss] = calcula_desconto(params[:proponente][:salario])
  end

  # GET /proponentes or /proponentes.json
  def index
    @proponentes = Proponente.page(params[:page])
  end

  # GET /proponentes/1 or /proponentes/1.json
  def show
  end

  # GET /proponentes/new
  def new
    @proponente = Proponente.new
  end

  # GET /proponentes/1/edit
  def edit
  end

  # POST /proponentes or /proponentes.json
  def create
    @proponente = Proponente.new(proponente_params)

    respond_to do |format|
      if @proponente.save
        format.html { redirect_to @proponente, notice: "Proponente foi criado com sucesso" }
        format.json { render :show, status: :created, location: @proponente }
        format.js { render :result  }
      else
        flash[:error] = "Proponente não foi criado com sucesso"
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @proponente.errors, status: :unprocessable_entity }
        format.js { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proponentes/1 or /proponentes/1.json
  def update
    respond_to do |format|
      if @proponente.update(proponente_params)
        format.html { redirect_to @proponente, notice: "Proponente foi atualizado com sucesso" }
        format.json { render :show, status: :ok, location: @proponente }
        format.js {redirect_to @proponente, notice: "Proponente foi criado com sucesso" }
      else
        flash[:error] = "Proponente não foi atualizado com sucesso"
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @proponente.errors, status: :unprocessable_entity }
        format.js { render :new, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proponentes/1 or /proponentes/1.json
  def destroy
    @proponente.destroy
    respond_to do |format|
      format.html { redirect_to proponentes_url, notice: "Proponente deletado com sucesso" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proponente
      @proponente = Proponente.find(params[:id])
    end
    # Only allow a list of trusted parameters through.
    def proponente_params
      params.require(:proponente).permit(:nome, :cpf, :data_nascimento, :logradouro, :numero, :bairro, :cidade, :estado, :cep, :telefone_pessoal, :telefone_referencia, :salario, :desconto_inss, :id)
    end
end
