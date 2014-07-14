# bash コマンドが使えるが複数回繰り返すと冪等性が保証されない
# 処理の中で、source ~/.bashrc をしているが再読込されないため
# 以降の処理を実行するには、一度 vagrant から出て、再度 ssh ログインする必要がある
bash "insert_line_rbenvpath" do
  environment "HOME" => '/home/vagrant'
  code <<-EOS
    echo 'export PATH="/home/vagrant/.rbenv/bin:$PATH"' >> ~/.bashrc
    echo 'eval "$(rbenv init -)"' >> ~/.bashrc
    chmod 777 ~/.bashrc
    source ~/.bashrc
  EOS
end

