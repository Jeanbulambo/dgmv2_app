class PassportsController < ApplicationController
  before_action :set_passport, only: %i[ show edit update destroy ]

  # GET /passports or /passports.json
  def index
    # Charger les nationalités disponibles pour la liste déroulante
    @nationalities = Passport.distinct.pluck(:nationalite).compact.sort

    @passports = Passport.all

    if params[:search].present?
      search = "%#{params[:search].downcase}%"
      @passports = @passports.where("LOWER(prenom) LIKE ? OR LOWER(numero_passport) LIKE ?", search, search)
    end

    if params[:nationalite].present?
      @passports = @passports.where(nationalite: params[:nationalite])
    end

    if params[:date_enregistrement].present?
      @passports = @passports.where(date_entree: params[:date_entree])
    end

    respond_to do |format|
      format.html
      format.csv { send_data @passports.to_csv, filename: "passeports-#{Date.today}.csv" }
    end
  end

  # GET /passports/1 or /passports/1.json
  def show
  end

  # GET /passports/new
  def new
    @passport = Passport.new
  end

  # GET /passports/1/edit
  def edit
  end

  # POST /passports or /passports.json
  def create
    @passport = Passport.new(passport_params)

    respond_to do |format|
      if @passport.save
        format.html { redirect_to @passport, notice: "Passport was successfully created." }
        format.json { render :show, status: :created, location: @passport }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @passport.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /passports/1 or /passports/1.json
  def update
    respond_to do |format|
      if @passport.update(passport_params)
        format.html { redirect_to @passport, notice: "Passport was successfully updated." }
        format.json { render :show, status: :ok, location: @passport }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @passport.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /passports/1 or /passports/1.json
  def destroy
    @passport.destroy!

    respond_to do |format|
      format.html { redirect_to passports_path, status: :see_other, notice: "Passport was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_passport
      @passport = Passport.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def passport_params
      params.expect(passport: [ :prenom, :nom, :numero_passport, :sexe, :date_naissance, :etat_civil, :profession, :nationalite, :en_charge_de, :type_visa, :date_expiration, :date_entree, :frontalier, :date_retour, :adresse_rdc, :date_enregistrement ])
    end
end
