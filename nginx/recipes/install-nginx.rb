Chef::Log.info("********** For customer '#{node['customer-id']}' invoice '#{node['invoice-number']}' **********")
Chef::Log.info("********** Invoice line number 1 is a '#{node['line-items']['line-1']}' **********")
Chef::Log.info("********** Invoice line number 2 is a '#{node['line-items']['line-2']}' **********")
Chef::Log.info("********** Invoice line number 3 is a '#{node['line-items']['line-3']}' **********")

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
