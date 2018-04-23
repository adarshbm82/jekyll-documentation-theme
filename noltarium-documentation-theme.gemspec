Gem::Specification.new do |s|
  s.name          = 'noltarium-documentation-theme'
  s.version       = '0.1.0'
  s.license       = 'MIT'
  s.authors       = ['nolte', 'GitHub, Inc.']
  s.email         = ['nolte07@googlemail.com']
  s.homepage      = 'https://github.com/nolte/jekyll-documentation-theme'
  s.summary       = 'Simple Bootstrap 4 Theme for documentations'

  s.files         = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r{^((_includes|_layouts|_sass|_data|assets)/|(LICENSE|README)((\.(txt|md|markdown)|$)))}i)
  end

  s.platform = Gem::Platform::RUBY
  s.add_runtime_dependency 'jekyll', '~> 3.8'
  s.add_runtime_dependency 'jekyll-seo-tag', '~> 2.0'
  s.add_runtime_dependency 'jemoji'
  s.add_runtime_dependency "jekyll-feed"
  s.add_runtime_dependency 'bootstrap'
  s.add_runtime_dependency 'jekyll-plantuml'
  s.add_runtime_dependency 'jekyll-sitemap'
  s.add_runtime_dependency 'jekyll-toc'
  s.add_runtime_dependency 'jekyll-sass-converter'
  s.add_runtime_dependency 'jekyll-coffeescript'
  s.add_runtime_dependency 'jekyll-tidy'
  s.add_runtime_dependency 'kramdown'
  s.add_runtime_dependency 'rouge'
  s.add_runtime_dependency 'jekyll-mermaid'

  s.add_development_dependency 'html-proofer', '~> 3.0'
  s.add_development_dependency 'rubocop', '~> 0.50'
  s.add_development_dependency 'w3c_validators', '~> 1.3'
end
