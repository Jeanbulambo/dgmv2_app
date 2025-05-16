json.extract! passport, :id, :prenom, :nom, :numero_passport, :sexe, :date_naissance, :etat_civil, :profession, :nationalite, :en_charge_de, :type_visa, :date_expiration, :date_entree, :frontalier, :date_retour, :adresse_rdc, :date_enregistrement, :created_at, :updated_at
json.url passport_url(passport, format: :json)
