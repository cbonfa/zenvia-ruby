require_relative 'lib/zenvia/version'

Gem::Specification.new do |spec|
  spec.name = "zenvia-ruby"
  spec.version = Zenvia::VERSION
  spec.authors = ["Alex Takitani"]
  spec.email = ["aftakitani@gmail.com"]

  spec.summary = 'Zenvia API Bindings'
  spec.description = 'Zenvia API Bindings'
  spec.homepage = "https://github.com/alextakitani/zenvia-ruby"
  spec.license = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  # push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/alextakitani/zenvia-ruby"
  spec.metadata["changelog_uri"] = "https://github.com/alextakitani/zenvia-ruby/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
