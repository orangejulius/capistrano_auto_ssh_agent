require "capistrano"
require "capistrano_auto_ssh_agent/version"

unless Capistrano::Configuration.respond_to?(:instance)
    abort "cap_git_tools requires Capistrano 2"
end

Capistrano::Configuration.instance.load do
  namespace :deploy do
    task :setup_ssh_agent do
      system("pgrep ssh-agent &> /dev/null; if [[ $? -ne 0 ]]; then ssh-agent&>/dev/null; fi")
      system("ssh-add &> /dev/null")
    end
  end

  before "deploy", "deploy:setup_ssh_agent"
end
