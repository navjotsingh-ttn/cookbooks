execute "what am i" do
time = Time.now.to_i
  cwd '/tmp'
  command "mkdir -p deploy_#{time}"
  action :run
end


      s3_bucket, s3_key, base_url = OpsWorks::SCM::S3.parse_uri(deploy[:scm][:repository])
      s3_file "/usr/share/nginx/html" do
        bucket s3_bucket
        remote_path s3_key
        aws_access_key_id deploy[:scm][:user]
        aws_secret_access_key deploy[:scm][:password]
        owner "root"
        group "root"
        mode "0755"
        s3_url base_url
        action :create
      end
