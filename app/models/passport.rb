# app/models/passport.rb

require "csv"

class Passport < ApplicationRecord
  # Validations de base
  validates :prenom, :nom, :numero_passport, presence: true

  # Export CSV
  def self.to_csv
    attributes = column_names

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.find_each do |passport|
        csv << attributes.map { |attr| passport.send(attr) }
      end
    end
  end
end
