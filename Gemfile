source 'https://rubygems.org'
ruby '2.1.2'

gem 'rails',                '~> 4.1.0'        # Rails
gem 'turbolinks'                              # Makes page loads faster

# Server
gem 'thin'                                    # Nicer server
gem 'postmarkdown'                            # Blog Engine
gem 'gibbon',               '~> 1.1'          # Mailchimp API

# Javascript
gem 'jquery-rails'                            # jQuery
gem 'jquery-turbolinks'                       # Turbolinks jQuery adapter

# Assets
gem 'sass-rails',           '~> 4.0.3'
gem 'coffee-rails',         '~> 4.0.0'
gem 'uglifier',             '>= 1.3.0'
gem 'slim-rails'
gem 'compass-rails',        '~> 1.1.7'
gem 'foundation-rails'
gem 'font-awesome-rails'

group :development do
  gem 'spring'                                # Rails quick loader
  gem 'better_errors'                         # Nice errors screens
  gem 'binding_of_caller'                     # Req'd for `better_errors`
  gem 'quiet_assets'                          # Reduces console output
  # gem 'pry-rails'                             # some nicities for pry
  # gem 'jazz_hands'                            # pry wrapper for rails

  gem 'dotenv-rails',       '~> 0.10'         # Nicer ENV variable handling
end

group :staging, :production do
  gem 'rails_12factor'                        # Allow heroku to compile assets
end
