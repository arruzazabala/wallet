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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130204144402) do

  create_table "conceptos", :force => true do |t|
    t.string   "descripcion"
    t.boolean  "es_ingreso"
    t.boolean  "es_egreso"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "movimientos", :force => true do |t|
    t.integer  "concepto_id"
    t.integer  "mes"
    t.integer  "anio"
    t.float    "monto"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "movimientos", ["concepto_id"], :name => "index_movimientos_on_concepto_id"

end
