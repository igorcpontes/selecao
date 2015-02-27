class EntrevistasController < ApplicationController
  before_action :set_entrevista, only: [:show, :edit, :update, :destroy]
  before_action :set_curriculo
  before_action :authenticate_user!

  def new
    @entrevista = Entrevista.new
    @sim_nao = GlobalConstants::SIM_NAO
    @sim_nao_bebida = GlobalConstants::SIM_NAO_BEBIDA
    @estado_civil = GlobalConstants::ESTADO_CIVIL
    @escolaridade = GlobalConstants::ESCOLARIDADE
    @preferencia_trabalho = GlobalConstants::PREFERENCIA_TRABALHO
    @cargo_ocupar = GlobalConstants::CARGO_OCUPAR
    @horario_preferencial = GlobalConstants::HORARIO_PREFERENCIAL
    @tipo_transporte = GlobalConstants::TIPO_TRANSPORTE
  end

  def edit
  end

  def show
  end

  def create
    @entrevista = Entrevista.new(entrevista_params)
    @entrevista.user_id = current_user.id
    @entrevista.curriculo_id = @curriculo.id

    respond_to do |format|
      if @entrevista.save
        format.html { redirect_to @curriculo, notice: 'Entrevista cadastrada com sucesso.' }
        format.json { render :show, status: :created, location: @curriculo }
      else
        format.html { render :new }
        format.json { render json: @entrevista.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @entrevista.update(entrevista_params)
        format.html { redirect_to @entrevista, notice: 'Entrevista atualizada com sucesso.' }
        format.json { render :show, status: :ok, location: @entrevista }
      else
        format.html { render :edit }
        format.json { render json: @entrevista.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @entrevista.destroy
    respond_to do |format|
      format.html { redirect_to entrevistas_url, notice: 'Entrevista apagada com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    def set_entrevista
      @entrevista = Entrevista.find(params[:id])
    end

    def set_curriculo
      @curriculo = Curriculo.find(params[:curriculo_id])
    end

    def entrevista_params
      params.require(:entrevista).permit(:data_nascimento, :telefone, :estado_civil, :filhos, :quantos_filhos, :mais_filhos, :mora_com_quem, :casa_propria, :sustenta_casa, :escolaridade, :parou_estudar, :problema_de_saude, :alergia, :ultimo_trabalho, :funcao_ultimo_trabalho, :entrada_ultimo_trabalho, :saida_ultimo_trabalho, :motivo_saida, :colocou_empresa_justica, :preferencia, :bebe, :fuma, :religiao, :setor_gostaria_ocupar, :experiencia_area_pretendida, :qualidade, :defeito, :disponibilidade_horario, :meio_transporte, :observacao, :carteira_nacional_habilitacao)
    end
end
