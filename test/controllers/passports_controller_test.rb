require "test_helper"

class PassportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @passport = passports(:one)
  end

  test "should get index" do
    get passports_url
    assert_response :success
  end

  test "should get new" do
    get new_passport_url
    assert_response :success
  end

  test "should create passport" do
    assert_difference("Passport.count") do
      post passports_url, params: { passport: { adresse_rdc: @passport.adresse_rdc, date_enregistrement: @passport.date_enregistrement, date_entree: @passport.date_entree, date_expiration: @passport.date_expiration, date_naissance: @passport.date_naissance, date_retour: @passport.date_retour, en_charge_de: @passport.en_charge_de, etat_civil: @passport.etat_civil, frontalier: @passport.frontalier, nationalite: @passport.nationalite, nom: @passport.nom, numero_passport: @passport.numero_passport, prenom: @passport.prenom, profession: @passport.profession, sexe: @passport.sexe, type_visa: @passport.type_visa } }
    end

    assert_redirected_to passport_url(Passport.last)
  end

  test "should show passport" do
    get passport_url(@passport)
    assert_response :success
  end

  test "should get edit" do
    get edit_passport_url(@passport)
    assert_response :success
  end

  test "should update passport" do
    patch passport_url(@passport), params: { passport: { adresse_rdc: @passport.adresse_rdc, date_enregistrement: @passport.date_enregistrement, date_entree: @passport.date_entree, date_expiration: @passport.date_expiration, date_naissance: @passport.date_naissance, date_retour: @passport.date_retour, en_charge_de: @passport.en_charge_de, etat_civil: @passport.etat_civil, frontalier: @passport.frontalier, nationalite: @passport.nationalite, nom: @passport.nom, numero_passport: @passport.numero_passport, prenom: @passport.prenom, profession: @passport.profession, sexe: @passport.sexe, type_visa: @passport.type_visa } }
    assert_redirected_to passport_url(@passport)
  end

  test "should destroy passport" do
    assert_difference("Passport.count", -1) do
      delete passport_url(@passport)
    end

    assert_redirected_to passports_url
  end
end
