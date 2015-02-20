class CreateExperiencias < ActiveRecord::Migration
  def change
    create_table :experiencias do |t|
      t.string :empresa
      t.string :tempo
      t.belongs_to :curriculo, index: true

      t.timestamps null: false
    end
    add_foreign_key :experiencias, :curriculos
  end
end
