action :create do

  mysql_service new_resource.name do
    bind_address  new_resource.bind_addr
    port  new_resource.port
    version new_resource.version
    initial_root_password new_resource.root_pwd
    action [:create, :start]
  end
end
