# frozen_string_literal: true

require_relative "lib/puppet/external/pson/version"

Gem::Specification.new do |spec|
  spec.name = "puppet-pson"
  spec.version = PSON::VERSION
  spec.authors = ["Puppet"]
  spec.email = ["puppet@puppet.com"]

  spec.summary = "A variant of PSON that puppet used for serializing data."
  spec.description = "A variant of PSON that puppet used for serializing data."
  spec.homepage = "https://github.com/puppetlabs/puppet-pson"
  spec.license = "Apache-2.0"
  spec.required_ruby_version = ">= 2.6.0"
  spec.metadata["homepage_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.require_paths = ["lib"]
end
