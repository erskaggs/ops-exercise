mysql_pass = data_bag_item('pass', 'mysql')

db_mysql_local_db 'plog' do
  version node.mysql_version  
  port    node.mysql_port
  root_pwd mysql_pass['password']
end
