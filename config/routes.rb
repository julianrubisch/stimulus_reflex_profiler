StimulusReflexProfiler::Engine.routes.draw do
  get "flamegraph", to: ->(env) { [200, {"Content-Type" => "text/html"}, [StimulusReflexProfiler::Flamegraph::Output.instance.content]] }
end
