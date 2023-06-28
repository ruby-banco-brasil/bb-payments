
$:.push File.expand_path("../lib", __FILE__)
require "bb_payments/version"

Gem::Specification.new do |s|
  s.name        = "bb_payments"
  s.version     = BancoBrasilPayments::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Roque", "Hent"]
  s.email       = ["roque.rafael@gmail.com","tech@hent.com.br"]
  s.homepage    = "https://github.com/ruby-banco-brasil/bb-payments"
  s.summary     = "A ruby wrapper for Banco do Brasil VPN Payments"
  s.description = "This gem maps to the BB Payments API"
  s.license     = "Unlicense"
  s.required_ruby_version = ">= 1.9"

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'
  s.add_runtime_dependency 'json', '~> 2.1', '>= 2.1.0'
  s.add_runtime_dependency 'bb_oauth', '~> 1.0'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
  s.metadata = {
    'source_code_uri' => 'https://github.com/ruby-banco-brasil/bb-payments'
  }
end
