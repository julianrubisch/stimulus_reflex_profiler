$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "stimulus_reflex_profiler/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "stimulus_reflex_profiler"
  spec.version     = StimulusReflexProfiler::VERSION
  spec.authors     = ["Julian Rubisch"]
  spec.email       = ["julian@julianrubisch.at"]
  spec.homepage    = "https://github.com/julianrubisch/stimulus_reflex_profiler"
  spec.summary     = "A Rails engine with profiling options for StimulusReflex"
  spec.description = "A Rails engine with profiling options for StimulusReflex"
  spec.license     = "MIT"

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", ">= 6.0.3"

  spec.add_runtime_dependency "stimulus_reflex"
  spec.add_development_dependency "standard"
end
