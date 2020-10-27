Rails.application.routes.draw do
  mount StimulusReflexProfiler::Engine => "/stimulus_reflex_profiler"
end
