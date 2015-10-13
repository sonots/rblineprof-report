Gem::Specification.new do |s|
  s.name        = 'rblineprof-report'
  s.version     = '0.0.4'
  s.description = 'Format and print the result of rblineprof (github.com/tmm1/rblineprof)'
  s.summary     = 'Format and print the result of rblineprof (github.com/tmm1/rblineprof)'
  s.license     = 'MIT'

  s.files       = Dir['lib/**/*']

  s.has_rdoc    = false

  s.authors     = ['Naotoshi Seo']
  s.email       = %w[sonots@gmail.com]
  s.homepage    = 'https://github.com/sonots/rblineprof-report'

  s.add_runtime_dependency 'term-ansicolor', '~> 1.3'
  s.add_development_dependency 'rake'
end
