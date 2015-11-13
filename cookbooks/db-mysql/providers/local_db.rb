action :create do

  mysql_service 'default' do
    bind_address  new_resource.bind_addr
    port  new_resource.port
    version new_resource.version
    inital_root_passsword 'p@$$W0rd'
    action [:create, :start]
  end
end
