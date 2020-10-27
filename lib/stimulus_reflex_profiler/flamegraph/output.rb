module StimulusReflexProfiler
  module Flamegraph
    class Output
      include Singleton

      attr_accessor :content
    end
  end
end
