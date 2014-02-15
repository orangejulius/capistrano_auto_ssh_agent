# CapistranoAutoSshAgent

Tired of getting permission denied errors when deploying your private repo app because you forgot to run ssh-agent?
This gem runs it for you (if it isn't already running) so you never have to think about it again

## Installation

Add this line to your application's Gemfile:

    gem 'capistrano_auto_ssh_agent', require: false

You probably want to put it in the development group

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capistrano_auto_ssh_agent

## Usage

In config/deploy.rb:

    require 'capistrano_auto_ssh_agent'

That's it! You should see the task 'deploy:setup\_ssh\_agent' run early in your deploy process.


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
