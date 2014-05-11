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
    - The format of the file is `Key=Value`
  - Cookie Secret:
    - Key = `SECRET_KEY_BASE`
    - Value = result of `rake secret`
  - Email Secret:
    - Key = `MAILCHIMP_API_KEY`
    - Value = visit [Mailchimp](https://us8.admin.mailchimp.com/account/api/) or talk to [Jesse](mailto:jesse@jcmcginnis.com) to get the `Website` API key

Run
---

1. `rails s`
2. Feel special!
