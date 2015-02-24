# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150224200735) do

  create_table "curriculos", force: :cascade do |t|
    t.string   "nome"
    t.string   "email"
    t.integer  "user_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "foto_file_name"
    t.string   "foto_content_type"
    t.integer  "foto_file_size"
    t.datetime "foto_updated_at"
  end

  create_table "entrevistas", force: :cascade do |t|
    t.date     "data_nascimento"
    t.string   "telefone"
    t.string   "estado_civil"
    t.string   "filhos"
    t.integer  "quantos_filhos"
    t.string   "mais_filhos"
    t.string   "mora_com_quem"
    t.string   "casa_propria"
    t.string   "sustenta_casa"
    t.string   "escolaridade"
    t.string   "parou_estudar"
    t.string   "problema_de_saude"
    t.string   "alergia"
    t.string   "ultimo_trabalho"
    t.string   "funcao_ultimo_trabalho"
    t.date     "entrada_ultimo_trabalho"
    t.date     "saida_ultimo_trabalho"
    t.string   "motivo_saida"
    t.string   "colocou_empresa_justica"
    t.string   "preferencia"
    t.string   "bebe"
    t.string   "fuma"
    t.string   "religiao"
    t.string   "setor_gostaria_ocupar"
    t.string   "experiencia_area_pretendida"
    t.string   "qualidade"
    t.string   "defeito"
    t.string   "disponibilidade_horario"
    t.string   "meio_transporte"
    t.text     "observacao"
    t.string   "carteira_nacional_habilitacao"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "curriculo_id"
    t.integer  "user_id"
  end

  create_table "experiencias", force: :cascade do |t|
    t.string   "empresa"
    t.string   "tempo"
    t.integer  "curriculo_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "experiencias", ["curriculo_id"], name: "index_experiencias_on_curriculo_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
