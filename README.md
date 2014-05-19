Red Steel Site
==============

Site for our [HouseHippo](//github.com/elsom25/redsteel) application.

Setup (OSX)
-----------

1. install xcode/xcode developer tools/homebrew
2. `brew update`
3. Setup ruby: `rvm install ruby-2.1.2`
4. Install gems: `bundle install`
5. Setup your environment variables:
  - create a file in the application root: `.env`
    - The format of the file is `Key=Value`, with a newline separating each key.
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
