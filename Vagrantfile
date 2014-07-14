# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "."
  config.vm.box = 'rails'
  config.ssh.forward_agent = true
  config.vm.network :forwarded_port, guest: 80, host:8080
  config.vm.network :forwarded_port, guest: 3000, host:3030
  config.vm.synced_folder "src", "/vagrant_data"
  config.vm.provision :chef_solo do |chef|
    
    chef.cookbooks_path =["./cookbooks","./site-cookbooks"]

    chef.add_recipe 'build-essential'
    chef.add_recipe 'git'
    chef.add_recipe 'database'
    chef.add_recipe 'memcached'
    chef.add_recipe 'nodejs'
    chef.add_recipe 'xml'
    chef.add_recipe 'ruby_build'
    chef.add_recipe 'rbenv::system'
    chef.add_recipe 'rbenv::vagrant'
    chef.add_recipe 'imagemagick'

    chef.add_recipe 'rails_book_cookbook::ops_user'
    chef.add_recipe 'rails_book_cookbook::create_homedirectory'
    chef.add_recipe 'rails_book_cookbook::sqlite3_dev'
    chef.add_recipe 'rails_book_cookbook::rubypath_setting'
    chef.add_recipe 'rails_book_cookbook::rails_setting'
    chef.add_recipe 'rails_book_cookbook::gem_package'


    chef.json = {
      "rbenv" => {
        "global" => "2.1.2",
        "rubies" => ["2.1.2"],
        "gems" => {
          "2.1.2" => [{'name' => 'bundler'}]
          
        }
      }
    }
  end


end
