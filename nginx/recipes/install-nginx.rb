execute "what am i" do
time = Time.now.to_i
  cwd '/tmp'
  command "mkdir -p nginx_setup_#{time}"
  action :run
end

execute "install nginx" do
   command "sudo amazon-linux-extras install nginx1 && sudo service nginx start"
   action :run
end
