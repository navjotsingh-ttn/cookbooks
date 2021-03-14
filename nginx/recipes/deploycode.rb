execute "what am i" do
time = Time.now.to_i
  cwd '/tmp'
  command "mkdir -p deploy_#{time}"
  action :run
end


execute "dowload  artifact" do
time = Time.now.to_i
  cwd '/usr/share/nginx/html'
  command "aws s3 cp s3://demo-km/demo.zip . && unzip demo.zip"
  action :run
end
