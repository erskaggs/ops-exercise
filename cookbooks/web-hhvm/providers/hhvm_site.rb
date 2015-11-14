action :create do
  template "#{node.nginx.dir}/conf.d/#{new_resource.name}.conf" do
    cookbook "web-hhvm"
    source "hhvm_site.conf.erb"
    owner "root"
    group "root"
    mode "0644"
    variables ({
      :name => new_resource.name,
      :port => new_resource.port,
      :docroot => new_resource.docroot
    })
    notifies :reload, 'service[nginx]'
  end
end
