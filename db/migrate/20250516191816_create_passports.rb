class CreatePassports < ActiveRecord::Migration[8.0]
  def change
    create_table :passports do |t|
      t.string :prenom
      t.string :nom
      t.string :numero_passport
      t.string :sexe
      t.date :date_naissance
      t.string :etat_civil
      t.string :profession
      t.string :nationalite
      t.string :en_charge_de
      t.string :type_visa
      t.date :date_expiration
      t.date :date_entree
      t.string :frontalier
      t.date :date_retour
      t.string :adresse_rdc
      t.date :date_enregistrement

      t.timestamps
    end
  end
end
