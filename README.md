Roommates Site
==============

Site for our [HouseMate](//github.com/elsom25/roommates) application.

Setup (OSX)
-----------

1. install xcode/xcode developer tools/homebrew
2. `brew update`
3. Setup ruby: `rvm install ruby-2.1.1`
4. Use ruby: `rvm use ruby-2.1.1`
5. Install gems: `bundle install`
7. Setup you environment variables:
  - create a file in the application root: `.env`
  - Run `rake secret`
  - Take the output and set `SECRET_KEY_BASE` environment variable to that in `.env`. i.e.: `SECRET_KEY_BASE=#{output from rake secret}`

Run
---

1. `rails s`
2. Feel special!
