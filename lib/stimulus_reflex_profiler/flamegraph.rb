# frozen_string_literal: true

StimulusReflex::Reflex.class_eval do
  def run_flamegraph
    html = Flamegraph.generate(nil, fidelity: 0.5) do
      yield
    end

    StimulusReflexProfiler::Flamegraph::Output.instance.content = html
  end

  def flamegraph?
    defined?(Flamegraph) && Flamegraph.respond_to?(:generate)
  end
end

StimulusReflex::Reflex.class_exec do
  set_callback :process, :around, :run_flamegraph, if: :flamegraph?
end
