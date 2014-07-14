# Cookbook Name: rails_book_cookbook
# Recipe:: create_homedirectory
include_recipe "rails_book_cookbook::ops_user"

directory "/home/ops" do
  action :create
  owner "ops"
  mode "0700"
end
