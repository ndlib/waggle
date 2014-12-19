$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "waggle/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "waggle"
  s.version     = Waggle::VERSION
  s.authors     = ["Jon Hartzler"]
  s.email       = ["jhartzle@nd.edu"]
  s.homepage    = ""
  s.summary     = ""
  s.description = ""
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.1.4"
  s.add_dependency 'draper'

  s.add_development_dependency "mysql2"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency 'bootstrap-sass', '~> 3.2.0'
  s.add_development_dependency 'autoprefixer-rails'
  s.add_development_dependency 'pry'

end
