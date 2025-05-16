require "application_system_test_case"

class PassportsTest < ApplicationSystemTestCase
  setup do
    @passport = passports(:one)
  end

  test "visiting the index" do
    visit passports_url
    assert_selector "h1", text: "Passports"
  end

  test "should create passport" do
    visit passports_url
    click_on "New passport"

    fill_in "Adresse rdc", with: @passport.adresse_rdc
    fill_in "Date enregistrement", with: @passport.date_enregistrement
    fill_in "Date entree", with: @passport.date_entree
    fill_in "Date expiration", with: @passport.date_expiration
    fill_in "Date naissance", with: @passport.date_naissance
    fill_in "Date retour", with: @passport.date_retour
    fill_in "En charge de", with: @passport.en_charge_de
    fill_in "Etat civil", with: @passport.etat_civil
    fill_in "Frontalier", with: @passport.frontalier
    fill_in "Nationalite", with: @passport.nationalite
    fill_in "Nom", with: @passport.nom
    fill_in "Numero passport", with: @passport.numero_passport
    fill_in "Prenom", with: @passport.prenom
    fill_in "Profession", with: @passport.profession
    fill_in "Sexe", with: @passport.sexe
    fill_in "Type visa", with: @passport.type_visa
    click_on "Create Passport"

    assert_text "Passport was successfully created"
    click_on "Back"
  end

  test "should update Passport" do
    visit passport_url(@passport)
    click_on "Edit this passport", match: :first

    fill_in "Adresse rdc", with: @passport.adresse_rdc
    fill_in "Date enregistrement", with: @passport.date_enregistrement
    fill_in "Date entree", with: @passport.date_entree
    fill_in "Date expiration", with: @passport.date_expiration
    fill_in "Date naissance", with: @passport.date_naissance
    fill_in "Date retour", with: @passport.date_retour
    fill_in "En charge de", with: @passport.en_charge_de
    fill_in "Etat civil", with: @passport.etat_civil
    fill_in "Frontalier", with: @passport.frontalier
    fill_in "Nationalite", with: @passport.nationalite
    fill_in "Nom", with: @passport.nom
    fill_in "Numero passport", with: @passport.numero_passport
    fill_in "Prenom", with: @passport.prenom
    fill_in "Profession", with: @passport.profession
    fill_in "Sexe", with: @passport.sexe
    fill_in "Type visa", with: @passport.type_visa
    click_on "Update Passport"

    assert_text "Passport was successfully updated"
    click_on "Back"
  end

  test "should destroy Passport" do
    visit passport_url(@passport)
    click_on "Destroy this passport", match: :first

    assert_text "Passport was successfully destroyed"
  end
end
