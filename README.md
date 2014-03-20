# G5 Sibling Deployer

[![Build Status](https://travis-ci.org/G5/g5-sibling-deployer.png?branch=master)](https://travis-ci.org/G5/g5-sibling-deployer)
[![Code Climate](https://codeclimate.com/repos/531ea1a66956807e1500a9c2/badges/0fa10391f3e9280dfc77/gpa.png)](https://codeclimate.com/repos/531ea1a66956807e1500a9c2/feed)

Deploys Sibling App automagically from Instruction Feed.

## Setup

1. Install all the required gems
```bash
bundle
```
1. Rename config/database.example.yml to config/database.yml.

1. Set up your database
```bash
rake db:setup
```

1. Install [redis](http://redis.io/) and start it
```bash
brew install redis
redis-server > ~/redis.log &
```

1. Create a new private key and add it to Github and Heroku
    * [https://help.github.com/articles/generating-ssh-keys](https://help.github.com/articles/generating-ssh-keys)
    * [https://devcenter.heroku.com/articles/keys](https://devcenter.heroku.com/articles/keys)


1. Export environment variables
```bash
export HEROKU_USERNAME=your_username
export HEROKU_API_KEY=your_api_key
export HEROKU_APP_NAME=your_heroku_app_name
export HEROKU_REPO=git@heroku.com:your-heroku-app-name.git
export GITHUB_REPO=git@github.com:your/your-github-repo-name.git
export ID_RSA=your_private_key
export APP_DISPLAY_NAME=your_preferred_display_name
```

1. Use foreman to start the web and worker proccesses
```bash
foreman start
```
Or if you are using pow or something start the job queue
```bash
rake jobs:work
```


## Authors

  * Jessica Lynn Suttles / [@jlsuttles](https://github.com/jlsuttles)
  * Bookis Smuin / [@bookis](https://github.com/bookis)
  * Jessica Dillon / [@jessicard](https://github.com/jessicard)


## Contributing

1. Fork it
1. Get it running
1. Create your feature branch (`git checkout -b my-new-feature`)
1. Write your code and **specs**
1. Commit your changes (`git commit -am 'Add some feature'`)
1. Push to the branch (`git push origin my-new-feature`)
1. Create new Pull Request

If you find bugs, have feature requests or questions, please
[file an issue](https://github.com/G5/g5-sibling-deployer/issues).


## Specs

```bash
guard
```


## Coverage

```bash
rspec spec
open coverage/index.html
```


## License

Copyright (c) 2013 G5

MIT License

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
