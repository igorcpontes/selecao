class CreateEscolaridades < ActiveRecord::Migration
  def change
    create_table :escolaridades do |t|
      t.string :instituicao
      t.belongs_to :curriculo, index: true

      t.timestamps null: false
    end
    add_foreign_key :escolaridades, :curriculos
  end
end
