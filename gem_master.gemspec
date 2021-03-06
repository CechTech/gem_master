$LOAD_PATH.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'gem_master/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = 'gem_master'
  spec.version     = GemMaster::VERSION
  spec.authors     = ['Jiří Čech']
  spec.email       = ['jiricech94@gmail.com']
  spec.homepage    = 'https://jiricech.com'
  spec.summary     = 'Manage gems like a master.'
  spec.description = 'Gem manager'
  spec.license     = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "Set to 'http://mygemserver.com'"
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files = Dir[
    '{app,config,db,lib}/**/*',
    'MIT-LICENSE',
    'Rakefile',
    'README.md'
  ]

  spec.add_dependency 'rails', '~> 5.2.2'

  spec.add_development_dependency 'bundler-audit', '~> 0.6.1'
  spec.add_development_dependency 'httparty', '~> 0.16.4'
  spec.add_development_dependency 'pg'
end
