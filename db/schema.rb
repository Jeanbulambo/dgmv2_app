# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_05_16_191816) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "passports", force: :cascade do |t|
    t.string "prenom"
    t.string "nom"
    t.string "numero_passport"
    t.string "sexe"
    t.date "date_naissance"
    t.string "etat_civil"
    t.string "profession"
    t.string "nationalite"
    t.string "en_charge_de"
    t.string "type_visa"
    t.date "date_expiration"
    t.date "date_entree"
    t.string "frontalier"
    t.date "date_retour"
    t.string "adresse_rdc"
    t.date "date_enregistrement"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
