db_mysql_local_db 'plog' do
  version node.mysql_version  
  port    node.mysql_port
end
