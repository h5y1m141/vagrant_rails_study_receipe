bash "install rails" do
  code <<-EOC
    export PATH="/home/vagrant/.rbenv/bin:$PATH"
    eval "$(rbenv init -)"
    gem update --system
    gem install --no-ri --no-rdoc rails
  EOC
end


bash "install pry" do
  code <<-EOC
    gem install --no-ri --no-rdoc pry
  EOC
end

bash "install twitter-bootstrap-rails" do
  code <<-EOC
    gem install --no-ri --no-rdoc twitter-bootstrap-rails
  EOC
end

bash "install pry-rails" do
  code <<-EOC
    gem install --no-ri --no-rdoc pry-rails
  EOC
end

bash "install puma" do
  code <<-EOC
    gem install --no-ri --no-rdoc puma
  EOC
end


