class AddCurriculoIdToEntrevista < ActiveRecord::Migration
  def change
    add_column :entrevistas, :curriculo_id, :integer
  end
end
