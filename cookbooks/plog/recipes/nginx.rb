include_recipe 'web-nginx'
include_recipe 'web-nginx::hhvm'

web_nginx_hhvm_site 'plog' do
  port node.port
  root node.http_root
end
