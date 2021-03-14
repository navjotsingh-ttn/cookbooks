execute "what am i" do
time = Time.now.to_i
  cwd '/tmp'
  command "mkdir -p nginx_setup_#{time}"
  action :run
end

execute "install nginx via yum" do
   command "yum -y install nginx"
   action :run
end
