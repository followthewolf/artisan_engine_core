Gem::Specification.new do |s|
  s.name        = 'artisan_engine_core'
  s.summary     = 'Core of ArtisanEngine.'
  s.description = 'Commerce functions for ArtisanEngine.'
  s.files       = Dir[ "{ app, config, lib }/**/*" ] + [ "Gemfile" ]
  s.version     = '0.0.1'

  # --------------------- Runtime Dependencies --------------------- #
  ## --------------------------- Basics --------------------------- ##
  
  s.add_runtime_dependency      'rails',                '3.0.7'
  s.add_runtime_dependency      'sqlite3',              '1.3.3'
  
  s.add_runtime_dependency      'inherited_resources',  '1.2.2'
  s.add_runtime_dependency      'friendly_id',          '3.2.1.1'
  
  ## ------------------------- Front-End -------------------------- ##
  
  s.add_runtime_dependency      'rdiscount',            '1.6.8'
  s.add_runtime_dependency      'haml',                 '3.1.1'
  s.add_runtime_dependency      'compass',              '0.11.1'
  s.add_runtime_dependency      'jquery-rails',         '1.0'
  s.add_runtime_dependency      'barista',              '1.0.0'
  
  # ------------------- Development Dependencies ------------------- #
  ## ------------------------- Test Suite ------------------------- ##
  
  s.add_development_dependency  'rspec-rails',          '2.5.0'
  s.add_development_dependency  'steak',                '1.1.0'
  s.add_development_dependency  'capybara',             '0.4.1.2'
  s.add_development_dependency  'database_cleaner',     '0.6.7'
  s.add_development_dependency  'launchy',              '0.4.0'
  
  ## -------------------- Sample Data Creation -------------------- ##
  
  s.add_development_dependency  'factory_girl_rails',   '1.0.1'
  s.add_development_dependency  'forgery',              '0.3.8'

end