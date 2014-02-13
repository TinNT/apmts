$:.push File.expand_path("../lib", __FILE__)

require "booking/version"

Gem::Specification.new do |s|
  s.name = "booking"
  s.version = Booking::VERSION
  s.license = 'MIT'
  s.authors = ["TinNT"]
  s.email = ["tintn.hcmute@gmail.com"]
  s.homepage = ""
  s.summary = ""
  s.description = ""

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "3.2.13"
  
  s.add_development_dependency "sqlite3"
end