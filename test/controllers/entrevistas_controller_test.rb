require 'test_helper'

class EntrevistasControllerTest < ActionController::TestCase
  setup do
    @entrevista = entrevistas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:entrevistas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create entrevista" do
    assert_difference('Entrevista.count') do
      post :create, entrevista: { alergia: @entrevista.alergia, bebe: @entrevista.bebe, carteira_nacional_habilitacao: @entrevista.carteira_nacional_habilitacao, casa_propria: @entrevista.casa_propria, colocou_empresa_justica: @entrevista.colocou_empresa_justica, data_nascimento: @entrevista.data_nascimento, defeito: @entrevista.defeito, disponibilidade_horario: @entrevista.disponibilidade_horario, entrada_ultimo_trabalho: @entrevista.entrada_ultimo_trabalho, escolaridade: @entrevista.escolaridade, estado_civil: @entrevista.estado_civil, experiencia_area_pretendida: @entrevista.experiencia_area_pretendida, filhos: @entrevista.filhos, fuma: @entrevista.fuma, funcao_ultimo_trabalho: @entrevista.funcao_ultimo_trabalho, mais_filhos: @entrevista.mais_filhos, meio_transporte: @entrevista.meio_transporte, mora_com_quem: @entrevista.mora_com_quem, motivo_saida: @entrevista.motivo_saida, observacao: @entrevista.observacao, parou_estudar: @entrevista.parou_estudar, preferencia: @entrevista.preferencia, problema_de_saude: @entrevista.problema_de_saude, qualidade: @entrevista.qualidade, quantos_filhos: @entrevista.quantos_filhos, religiao: @entrevista.religiao, saida_ultimo_trabalho: @entrevista.saida_ultimo_trabalho, setor_gostaria_ocupar: @entrevista.setor_gostaria_ocupar, sustenta_casa: @entrevista.sustenta_casa, telefone: @entrevista.telefone, ultimo_trabalho: @entrevista.ultimo_trabalho }
    end

    assert_redirected_to entrevista_path(assigns(:entrevista))
  end

  test "should show entrevista" do
    get :show, id: @entrevista
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @entrevista
    assert_response :success
  end

  test "should update entrevista" do
    patch :update, id: @entrevista, entrevista: { alergia: @entrevista.alergia, bebe: @entrevista.bebe, carteira_nacional_habilitacao: @entrevista.carteira_nacional_habilitacao, casa_propria: @entrevista.casa_propria, colocou_empresa_justica: @entrevista.colocou_empresa_justica, data_nascimento: @entrevista.data_nascimento, defeito: @entrevista.defeito, disponibilidade_horario: @entrevista.disponibilidade_horario, entrada_ultimo_trabalho: @entrevista.entrada_ultimo_trabalho, escolaridade: @entrevista.escolaridade, estado_civil: @entrevista.estado_civil, experiencia_area_pretendida: @entrevista.experiencia_area_pretendida, filhos: @entrevista.filhos, fuma: @entrevista.fuma, funcao_ultimo_trabalho: @entrevista.funcao_ultimo_trabalho, mais_filhos: @entrevista.mais_filhos, meio_transporte: @entrevista.meio_transporte, mora_com_quem: @entrevista.mora_com_quem, motivo_saida: @entrevista.motivo_saida, observacao: @entrevista.observacao, parou_estudar: @entrevista.parou_estudar, preferencia: @entrevista.preferencia, problema_de_saude: @entrevista.problema_de_saude, qualidade: @entrevista.qualidade, quantos_filhos: @entrevista.quantos_filhos, religiao: @entrevista.religiao, saida_ultimo_trabalho: @entrevista.saida_ultimo_trabalho, setor_gostaria_ocupar: @entrevista.setor_gostaria_ocupar, sustenta_casa: @entrevista.sustenta_casa, telefone: @entrevista.telefone, ultimo_trabalho: @entrevista.ultimo_trabalho }
    assert_redirected_to entrevista_path(assigns(:entrevista))
  end

  test "should destroy entrevista" do
    assert_difference('Entrevista.count', -1) do
      delete :destroy, id: @entrevista
    end

    assert_redirected_to entrevistas_path
  end
end
