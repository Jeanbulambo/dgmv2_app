# -*- encoding: utf-8 -*-
# stub: countries 3.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "countries".freeze
  s.version = "3.1.0".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Josh Robinson".freeze, "Joe Corcoran".freeze, "Russell Osborne".freeze]
  s.date = "2021-03-24"
  s.description = "All sorts of useful information about every country packaged as pretty little country objects. It includes data from ISO 3166".freeze
  s.email = ["hexorx@gmail.com".freeze, "russell@burningpony.com".freeze]
  s.homepage = "http://github.com/hexorx/countries".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.4".freeze
  s.summary = "Gives you a country object full of all sorts of useful information.".freeze

  s.installed_by_version = "3.5.11".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<i18n_data>.freeze, ["~> 0.11.0".freeze])
  s.add_runtime_dependency(%q<unicode_utils>.freeze, ["~> 1.4".freeze])
  s.add_runtime_dependency(%q<sixarm_ruby_unaccent>.freeze, ["~> 1.1".freeze])
  s.add_development_dependency(%q<rspec>.freeze, [">= 3".freeze])
  s.add_development_dependency(%q<activesupport>.freeze, [">= 3".freeze])
  s.add_development_dependency(%q<nokogiri>.freeze, [">= 1.8".freeze])
end
