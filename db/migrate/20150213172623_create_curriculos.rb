class CreateCurriculos < ActiveRecord::Migration
  def change
    create_table :curriculos do |t|
      t.string :nome
      t.string :email
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
