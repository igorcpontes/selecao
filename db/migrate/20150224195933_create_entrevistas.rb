class CreateEntrevistas < ActiveRecord::Migration
  def change
    create_table :entrevistas do |t|
      t.date :data_nascimento
      t.string :telefone
      t.string :estado_civil
      t.string :filhos
      t.integer :quantos_filhos
      t.string :mais_filhos
      t.string :mora_com_quem
      t.string :casa_propria
      t.string :sustenta_casa
      t.string :escolaridade
      t.string :parou_estudar
      t.string :problema_de_saude
      t.string :alergia
      t.string :ultimo_trabalho
      t.string :funcao_ultimo_trabalho
      t.date :entrada_ultimo_trabalho
      t.date :saida_ultimo_trabalho
      t.string :motivo_saida
      t.string :colocou_empresa_justica
      t.string :preferencia
      t.string :bebe
      t.string :fuma
      t.string :religiao
      t.string :setor_gostaria_ocupar
      t.string :experiencia_area_pretendida
      t.string :qualidade
      t.string :defeito
      t.string :disponibilidade_horario
      t.string :meio_transporte
      t.text :observacao
      t.string :carteira_nacional_habilitacao

      t.timestamps null: false
    end
  end
end
