# StimulusReflexProfiler
<img width="1576" alt="Bildschirmfoto_2020-10-30_um_14_08_06" src="https://user-images.githubusercontent.com/4352208/97709113-1bf1c200-1aba-11eb-8d0e-3632b5bb0e25.png">

Provides profiling functionality for [StimulusReflex](https://github.com/hopsoft/stimulus_reflex). Heavily inspired by [Rack Mini Profiler](https://github.com/MiniProfiler/rack-mini-profiler).

Currently implemented:

- Call Stack Profiling (Flamegraph)

## Usage
Mount `StimulusReflexProfiler` as an engine in your `routes.rb`.

```ruby
if Rails.env.development?
  mount StimulusReflexProfiler::Engine, at: 'stimulus_reflex_profiler'
end
```

`http://localhost:3000/stimulus_reflex_profiler/flamegraph` will now display the flamegraph of the last triggered Reflex (see above).


## Installation
Add this line to your application's Gemfile:

```ruby
gem 'stimulus_reflex_profiler'
```

For call-stack profiling/flamegraphs add the following gems, too:

```ruby
gem 'flamegraph'
gem 'stackprof'
```

And then execute:
```bash
$ bundle
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
