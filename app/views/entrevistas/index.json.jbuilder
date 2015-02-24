json.array!(@entrevistas) do |entrevista|
  json.extract! entrevista, :id, :data_nascimento, :telefone, :estado_civil, :filhos, :quantos_filhos, :mais_filhos, :mora_com_quem, :casa_propria, :sustenta_casa, :escolaridade, :parou_estudar, :problema_de_saude, :alergia, :ultimo_trabalho, :funcao_ultimo_trabalho, :entrada_ultimo_trabalho, :saida_ultimo_trabalho, :motivo_saida, :colocou_empresa_justica, :preferencia, :bebe, :fuma, :religiao, :setor_gostaria_ocupar, :experiencia_area_pretendida, :qualidade, :defeito, :disponibilidade_horario, :meio_transporte, :observacao, :carteira_nacional_habilitacao
  json.url entrevista_url(entrevista, format: :json)
end
