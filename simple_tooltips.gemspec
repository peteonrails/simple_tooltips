spec = Gem::Specification.new do |s|
    s.platform  =   Gem::Platform::RUBY
    s.name      =   "simple_tooltips"
    s.version   =   "0.0.1"
    s.author    =   "Peter Jackson"
    s.email     =   "pete @nospam@ peteonrails.com"
    s.summary   =   "A package for dead simple tooltips in the style that I like."
    s.files     =   ['app/helpers/tooltip_helper.rb', 'generators/lib/insert_commands.rb', 'generators/tooltip_generator.rb', 'generators/templates/tooltip.css', 'generators/templates/tooltip.sass', 'rails/init.rb', 'LICENSE', 'INSTRUCTIONS', 'README']
    s.require_path  =   "lib"
    s.test_files = ['tests/threaded_collections_test.rb']
    s.has_rdoc  =   true
    s.extra_rdoc_files  =   ["README"]
end