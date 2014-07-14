# Cookbook Name: rails_book_cookbook
# Recipe:: rails_setting

# Qiitaの以下記事を参考に設定
# http://qiita.com/kasaharu/items/cdd5fd63ca4a9d20a1ff#2-4
# package コマンドでインストール
%w{zlib1g-dev libssl-dev libreadline-dev libyaml-dev libxml2-dev libxslt-dev ruby2.0}.each do |pkg|
  package pkg do
    action :install
  end
end

# The program 'rails' can be found in the following packages: * ruby-railties-3.2 * ruby-railties-4.0というエラーが出るため、ruby-railties-4.0をインストールする
package "ruby-railties-4.0" do
  action :install
end



