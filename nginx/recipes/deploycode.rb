execute "what am i" do
time = Time.now.to_i
  cwd '/tmp'
  command "mkdir -p deploy_#{time}"
  action :run
end


      s3_file "/usr/share/nginx/html" do
        bucket s3_bucket
        remote_path node["deploy"]["appshortname"]["scm"]["repository"]
        owner "root"
        group "root"
        mode "0755"
        s3_url base_url
        action :create
      end
