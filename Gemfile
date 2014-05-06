source 'https://rubygems.org'
ruby '2.1.1'

gem 'rails',                '4.1.0'           # Rails
gem 'turbolinks'                              # Makes page loads faster
gem 'sqlite3', group: [:development, :test]   # Dev & Test DB
gem 'pg',      group: :production             # Production DB

# Server
gem 'thin'                                    # Nicer server
gem 'awesome_print'                           # Fancy console printing
gem 'jbuilder',             '~> 2.0'          # Nice JSON builder (app builder)
gem 'postmarkdown'                            # Blog Engine

# Javascript
gem 'jquery-rails'                            # jQuery
gem 'jquery-turbolinks'                       # Turbolinks jQuery adapter
gem 'modernizr-rails'                         # Modernizr, req'd for Foundation

# Assets
gem 'sass-rails',           '~> 4.0.3'
gem 'coffee-rails',         '~> 4.0.0'
gem 'slim-rails'
gem 'compass-rails'
gem 'foundation-rails'
gem 'font-awesome-rails'

gem 'uglifier',             '>= 1.3.0'

group :development do
  gem 'spring'                                # Rails quick loader
  gem 'better_errors'                         # Nice errors screens
  gem 'binding_of_caller'                     # Req'd for `better_errors`
  gem 'meta_request'                          # Adaptor for browser inspector
  gem 'hub', require: nil                     # GitHub integration
  gem 'quiet_assets'                          # Reduces console output
  gem 'rails_layout'
end

group :staging, :production do
  gem 'rails_12factor'                        # Allow heroku to compile assets
end

group :doc do
  gem 'sdoc',               '~> 0.4.0'
end
