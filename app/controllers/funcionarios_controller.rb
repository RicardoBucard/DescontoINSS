class FuncionariosController < ApplicationController
  before_action :set_funcionario, only: %i[ show edit update destroy ]

  PRIMEIRA_FAIXA_SALARIAL = 1045.0
  SEGUNDA_FAIXA_SALARIAL = 2089.60
  TERCEIRA_FAIXA_SALARIAL = 3134.40
  QUARTA_FAIXA_SALARIAL = 6101.06   

  # GET /funcionarios or /funcionarios.json
  def index
    @funcionarios = Funcionario.page(params[:page])
  end

  # GET /funcionarios/1 or /funcionarios/1.json
  def show
  end

  # GET /funcionarios/new
  def new
    @funcionario = Funcionario.new
  end

  # GET /funcionarios/1/edit
  def edit
  end

  # POST /funcionarios or /funcionarios.json
  def create
    @funcionario = Funcionario.new(funcionario_params)

    respond_to do |format|
      if @funcionario.save
        format.html { redirect_to @funcionario, notice: "Funcionario was successfully created." }
        format.json { render :show, status: :created, location: @funcionario }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @funcionario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /funcionarios/1 or /funcionarios/1.json
  def update
    respond_to do |format|
      if @funcionario.update(funcionario_params)
        format.html { redirect_to @funcionario, notice: "Funcionario was successfully updated." }
        format.json { render :show, status: :ok, location: @funcionario }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @funcionario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /funcionarios/1 or /funcionarios/1.json
  def destroy
    @funcionario.destroy
    respond_to do |format|
      format.html { redirect_to funcionarios_url, notice: "Funcionario was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def relatorio_salarial
    count_primeira_faixa = FuncionariosRelatorio.faixas_salarial(PRIMEIRA_FAIXA_SALARIAL)
    count_segunda_faixa = FuncionariosRelatorio.faixas_salarial(PRIMEIRA_FAIXA_SALARIAL, SEGUNDA_FAIXA_SALARIAL)
    count_terceira_faixa = FuncionariosRelatorio.faixas_salarial(SEGUNDA_FAIXA_SALARIAL, TERCEIRA_FAIXA_SALARIAL)
    count_quarta_faixa = FuncionariosRelatorio.faixas_salarial(TERCEIRA_FAIXA_SALARIAL, QUARTA_FAIXA_SALARIAL)
    @count_faixas_salariais = { primeira_faixa: count_primeira_faixa, segunda_faixa: count_segunda_faixa, terceira_faixa: count_terceira_faixa, quarta_faixa: count_quarta_faixa }
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_funcionario
      @funcionario = Funcionario.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def funcionario_params
      params.require(:funcionario).permit(:nome, :cpf, :salario)
    end
end
