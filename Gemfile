source 'https://rubygems.org'
ruby '2.1.1'

gem 'rails',                '4.1.0'           # Rails
gem 'turbolinks'                              # Makes page loads faster
gem 'sqlite3', group: [:development, :test]   # Dev & Test DB
gem 'pg',      group: :production             # Production DB

# Server
gem 'thin'
gem 'awesome_print'                           # Fancy console printing
gem 'jbuilder',             '~> 2.0'          # Nice JSON builder (app builder)

# Javascript
gem 'jquery-rails'                            # jQuery
gem 'jquery-turbolinks'
gem 'modernizr-rails'                         # Modernizr
gem 'spinjs-rails'                            # Spinner

# Assets
gem 'sass-rails',           '~> 4.0.3'
gem 'coffee-rails',         '~> 4.0.0'
gem 'slim-rails'
gem 'compass-rails'
gem 'foundation-rails'

gem 'uglifier',             '>= 1.3.0'

group :development do
  gem 'spring'                                # rails quick loader
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'meta_request'
  gem 'hub', require: nil                     # GitHub integration
  gem 'quiet_assets'
  gem 'rails_layout'
end

group :doc do
  gem 'sdoc',               '~> 0.4.0'
end
