$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "shopeng/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "shopeng"
  s.version     = Shopeng::VERSION
  s.authors     = ["Sokvanna Seng"]
  s.email       = ["sokvannas@gmail.com"]
  s.homepage    = "http://www.sokvanna.com"
  s.summary     = "stuff"
  s.description = "more stuff."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.2"
  s.add_dependency "carrierwave"
  s.add_dependency "rmagick"
  s.add_development_dependency "sqlite3"
end
