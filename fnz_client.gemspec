# encoding: utf-8
Gem::Specification.new do |gem|
  gem.authors       = ["Luis Perichon"]
  gem.email         = ["luisperichon@gmail.com"]
  gem.description   = %q{This is client library for Padma-FNZ API.}
  gem.summary       = %q{Client library Padma-fnz API}
  gem.homepage      = ""

  gem.files = Dir["{app,lib,config,vendor}/**/*"]
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "fnz_client"
  gem.require_paths = ["lib"]
  gem.version       = '0.0.5'

  gem.add_dependency "railties", ">= 3.1"
  gem.add_dependency 'logical_model', ">= 0.5.11"

end
