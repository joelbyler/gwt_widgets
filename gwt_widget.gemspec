# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "gwt_widgets/version"

Gem::Specification.new do |s|
  s.name = "gwt_widgets"
  s.version = GwtWidgets::VERSION
  s.platform = Gem::Platform::RUBY
  s.authors = ["Joel Byler"]
  s.email = ["joelbyler@gmail.com"]
  s.homepage = "http://github.com/joelbyler/gwt_widgets"
  s.summary = %q{PageObject Widgets extention for GWT apps}
  s.description = %q{A page-object extension for GWT apps, to support cucumber tests}

  s.rubyforge_project = "gwt_widgets"

  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'page-object', '>= 0.8.2'

  s.add_development_dependency 'rspec', '>= 2.12.0'
  s.add_development_dependency 'cucumber', '< 1.2.0'
  s.add_development_dependency 'yard', '>= 0.7.2'
  s.add_development_dependency 'rack', '>= 1.0'
  s.add_development_dependency 'watir-webdriver', '>= 0.6.2'
  s.add_development_dependency 'selenium-webdriver', '>= 2.27.2'

end
